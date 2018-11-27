**ISS 2018 - 2019             
Mini-Projet MOSH            
Pierre PRIE & Mikita PRAKAPENKA**

Sommaire
========

1. Introduction au projet

	a. Présentation du sujet et des étapes clés
	
	b. Détail du contenue du dossier

		
2. Montage et développement du projet avec arduino

	a. Communication LoRa 
	
	b. Capteur de gaz connectée et gestion d'interruption
	
	c. Gestion d’énergie
	
	d. Interface Node-RED
	

3. Réalisation des PCBs pour le projet

	a. Réalisation de étage d’amplification du nanocapteur de gaz
	
	b. Réalisation du SHIELD arduino du projet
	

1.Introduction au projet
==========================

a. Présentation du sujet et des étapes clés
--------------------------------------------

   Dans le cadre de l’UF “MICRO-CONTRÔLEURS ET OPEN-SOURCE HARDWARE” en 5ème année spécialité “Innovative Smart Systems” nous avons conçus des PCBs visant à récupérer les données d’un nanocapteur de gaz et à les envoyer sur le serveur TTN grâce à la technologie LoRa. Nous avons découpé notre travail en plusieurs étapes : 

* Utiliser la puce RN2483 (LoRa) via l’Arduino UNO pour envoyer des données tests sur le serveur TTN. 

* Câbler et récupérer la réponse du capteur de gaz MQ-5.  

* Câbler un montage comparateur permettant de générer une interruption dès que la concentration en gaz mesuré par le MQ-5 dépasse un certain seuil. Le comparateur est de nature HW.  

* Établir une estimation de la consommation d’énergie du système.  

* Récupérer les données envoyées sur le serveur TTN via Node-RED pour réaliser un affichages graphiques des données.  

* Réaliser un SHIELD avec l’ensemble des composants utilisés pour ce projet MOSH (connecteur avec la puce LoRa, avec le capteur de gaz MQ-5, le comparateur LM393, des LED de signalements…).  

* Réaliser une PCB pour l’étage d’amplification du nanocapteur de gaz conçu en salle blanche. Ce PCB est également équipé d’un cavalier et d’un mosfet IRF520 utilisés pour appliquer périodiquement une tension de décharge de 12V au borne du nanocapteur de gaz. 

* Notre SHIELD a finalement été modifié pour pouvoir y connecter la PCB du nanocapteur de gaz et de son étage d'amplification.  


Ce travail va nous permettre d’avoir un système complet qui récupère la réponse du nanocapteur, bien calibré avec le capteur MQ-5 et communiquant via LoRa, TTN et Node-Red. Le système gère la concentration dangereuse du gaz et envoie un message d’alerte, tout en ayant une interface graphique très lisible par l’utilisateur.   

b. Détail du contenue du dossier
--------------------------------

Ce projet comporte 3 dossiers différents :

* Le dossier KiCad regroupent les différents SHIELDS et PCBs réalisés.

* Le dossier arduino regroupe les codes arduino réalisés et utilisés sur la carte arduino UNO. Ce dossier dispose également d’un fichier.zip avec la librairie utilisé pour l’envoie de données avec LoRa.

* Un dossier IMG avec toutes les captures d'écrans et photos de notre projet.


2.Montage et développement du projet avec arduino	
===================================================

Pour réaliser notre code arduino, nous avons utilisés 2 librairies supplémentaires à celles présentes dans l’environnement arduino.
La librairie <SoftwareSerial.h> présente dans les dossiers arduino
La librairie <rn2xx3.h> disponible à l’adresse : https://github.com/jpmeijers/RN2483-Arduino-Library. Cette librairie propose des fonctions d’initialisation et de communication de la puce LoRa avec le serveur TTN.

a. Communication LoRa
-----------------------

Afin d’établir la communication LoRa de la puce RN2483 avec l’antenne et donc le serveur TTN, on doit la connecter à l’Arduino UNO. Le pinout de la puce étant écrit sur son PCB on n’a qu’à connecter les pins correspondantes à l’Arduino ( Tx, Rx, RST, 3v3 et GND). 
Ensuite on suit la démarche du site TheThingsNetwork pour créer une application ainsi qu’un device sur cette application. L’application et le device sont défini par des identifiants : le DEVICE EUI et APPLICATION EUI. Lors de la création du device sur TTN nous avons choisit la méthode d’activation ABP. Le serveur TTN nous génère alors un “devAddr”, un “nwkSKey” et un “appSKey” qui sont utilisés dans notre code arduino pour identifier la puce LoRa et communiquer avec notre instance du serveur TTN.

Le code arduino est divisé en deux grandes parties, une partie void setup() qui  est exécuté une seul fois au démarrage de la carte et une partie void loop() qui s'exécute ensuite jusqu'à ce que la carte ne soit plus alimentée.

La partie void setup() nous permet principalement de tester et d’établir la connexion avec l’antenne LoRa, grâce à la fonction “initialize_radio” et de définir les interruptions. Nous reviendrons sur le fonctionnement des interruptions dans la partie suivante. La fonction “initialize_radio” renvoie différentes messages d’initialisation sur le port série de l’ordinateur. Elle établit la connexion avec le serveur TTN grâce aux cléfs “devAddr”, “nwkSKey” et “appSKey”. En cas d'erreur un message spécifique est affiché sur le port série.

Dans la partie void loop(), l’envoie de donnée à la puce LoRa est réalisé avec la commande “myLora.tx(Donnée)”, la fonction découpe et envoie automatiquement les données en paquets de 2 caractères hexadécimales (8bits). 

Ces données sont alors lisibles directement sur TTN dans l’onglet “data” de notre device. Cependant ces données sont affiché sous leurs forme hexadécimales, il est nécessaire de coder un “Payload Formats” pour effectuer un affichage sous forme décimale. 
![Réception de messages sur TTN](../developpement/IMG/TTN.png)

b. Capteur de gaz connectée et gestion d'interruption
------------------------------------------------------

Le capteur de gaz MQ-5 possède une connexion de type “groove” . C’est donc un capteur de type analogique, on le connecte donc sur une des pins analogique. Le capteur est également relié à la masse et au 5V. Avant d’envoyer les données mesurées par le capteurs de gaz, il faut les transformer en donnée digital. Pour cela, on divise la valeur lu par 1024 et on multiplie le résultat par 5. Cette formule est donnée dans la datasheet du capteur. On note que cette “transformation” aurait très bien pu être effectué plus tard, comme juste avant l’affichage dans l’interface graphique de Node-RED. On note qu’une LED rouge clignote à chaque envoie de donnée via la puce LoRa

Il est possible de définir des interruptions dans le void setup() du programme Arduino. Les interruptions consistent en une sorte de fonction qui sera exécutée à chaque fois que la condition d'interruption est réalisée. Pendant son exécution, le reste du programme est mis en pause. A la fin de son exécution, le programme reprend au début de la Void loop(). 
Une interruption est définie de la manière suivante : “attachInterrupt(1, gestionINT0UP, RISING)”. Ainsi quand un état montant est lu sur la pin 3, l'interruption se déclenche et exécute la fonction gestionINT0UP. Nous avons défini deux interruption différentes, une pour la lecture d’un état montant et une pour un état descendant.
Pour déclencher les interruptions, nous avons utilisé un AOP, le LM393, pour comparer la tension généré par le capteur de gaz MQ-5 et une tension seuil que nous avons défini grâce à un pont diviseur de tension. Ainsi des que la tension du capteur de gaz MQ-5 dépasse ce seuil, un état haut est généré en sortie de l’AOP. A l’inverse quand la tension du capteur repasse sous le seuil, un état bas est généré. On note qu’une LED rouge s’allume et qu’un message d’alerte est envoyé sur le port série de l’ordinateur quand la tension du capteur de gaz se trouve au dessus du seuil et que la LED s’éteint dans le cas contraire. Un message de retour à l’état normal est également envoyé sur le port série.
Utilisation du comparateur nous permet de générer des interruptions sans utiliser une comparaison logiciel qui serait exécuté à chaque exécution de la boucle. 
![Communication avec le port série de l'ordinateur](../developpement/IMG/Interrup.png)


c.   Gestion de consommation d’énergie
--------------------------------------

On peut estimer la consommation énergétique du système avec un Charger Doctor  qui se branche en série entre le port USB d’ordinateur et le câble USB de l’Arduino. Il nous affiche la consommation moyenne de 0,280 A avec le capteur de gaz MQ-5 connecté. Or, dès qu’on déconnecte le capteur on tombe à  80mA de consommation. Cela s’explique bien par le fait que le capteur MQ-5 identifie la concentration des gazes en chauffant fortement une résistance, ce qui n’est pas optimale pour la consommation énergétique. Avec le nanocapteur de gaz en revanche, on pourra espérer d’avoir une consommation beaucoup plus intéressante. 


d.   Interface Node-RED
-----------------------

Afin de pouvoir interagir avec le capteur via le cloud (TTN): donc lire et écrire des messages, on a utilisé une interface Node-RED, très pratique. 
La première chose à faire, c’est d’installer l’interface sur votre PC. Pour ce faire, on a utilisé un guide de Node-RED pour Windows :  https://nodered.org/docs/platforms/windows. Après avoir installé l’interface on y accède via le terminal (commande “node-red”) et on ouvre l’adresse qu’il nous propose dans un  navigateur Web. Pour pouvoir manipuler les données de TTN, on doit installer une librairie “TheThingsNetwork” dédiée. 
A partir de maintenant on peut assembler l’interface, qui nous permettra d’afficher proprement les données du capteur. Tout d’abord on configure la partie “device” avec les identifiants de l’application TTN dédiée. Si tout a été bien saisi, on verra un voyant vert et le message “connected” à côté du “device”. Ensuite on va rajouter une fonction “get payload” à la suite du “device” qui va nous permettre de garder le message utile : msg = {value: msg.payload['payload']};return msg. Puis on connecte un afficheur “graphique en fonction du temps” et une jauge  à la suite de la fonction, pour pouvoir enfin afficher notre donnée. En cliquant sur “Deploy” et puis sur le “dashboard” on affiche les données en temps réel dans un nouvel onglet. 
Sur les images suivantes vous voyez la réponse du capteur de gaz: normale au début, puis “rouge” à cause d’une concentration importante du gaz dangereux, et qui repasse en normale après. Vous y trouverez aussi notre interface Node-RED.
![Code sous Node Red - bloc](../developpement/IMG/node-red4.png)
![Code sous Node Red - Fonction payload](../developpement/IMG/node-red5.png)
![Graph 1](../developpement/IMG/node-red1.png)
![Graph 2](../developpement/IMG/node-red2.png)
![Graph 3](../developpement/IMG/node-red3.png)

3.Réalisation des PCBs pour le projet
======================================

Pour réaliser l’ensemble de nos PCBs, nous avons utilisé le logiciel Open-Source Kicad qui permet de réaliser un circuit électrique et son routage. On commence par réaliser le circuit électronique, en définissant si nécessaire de nouvelles librairies pour les composants inexistant. On assigne ensuite une empreinte à chacun des composant avant de pouvoir réaliser le routage. 

a. Réalisation de étage d’amplification du nanocapteur de gaz
-------------------------------------------------------------

L’objectif était ici de réaliser le routage de l’étage d’amplification du nanocapteur de gaz, que nous avions testé et défini en TP. Nous avons également rajouté un mosfet IRF520 contrôlable par une pin de la carte arduino qui permettra d’appliquer une tension de décharge de 12V au borne du nanocapteur de gaz périodiquement. Un cavalier à été ajouté pour connecter la tension de décharge de 12V.
La PCB a été conçue pour venir se connecter sur le SHIELD arduino de notre projet MOSH.


b. Réalisation du SHIELD arduino du projet
------------------------------------------

L’ensemble de notre montage utilisé durant le mini-projet  a été routé sur un SHIELD pour Arduino UNO. Ce SHIELD comprend l’ensemble des LED, résistances, condensateurs, l’AOP, le connecteur du capteur de gaz MQ-5 ainsi que des connecteurs pour la puce LoRa et l’étage d’amplification du nanocapteur de gaz. L’ensemble de ces fichiers sont disponibles dans le dossier KiCad.

