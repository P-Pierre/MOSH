//Sauce
//https://letmeknow.fr/blog/2015/10/27/tutomodulelora/
//https://www.thethingsnetwork.org/forum/t/how-to-build-your-first-ttn-node-arduino-rn2483/1574

#include <rn2xx3.h>
#include <SoftwareSerial.h>
#include <math.h>

SoftwareSerial mySerial(10, 11); // RX, TX
const int LED=6; 
float sensorValue= 0;
//float sensor_volt= 0;
int interup_secuUp= 0;
int interup_secuDw= 0;
int interup_secuCycle= 0;
String Res= "";

//create an instance of the rn2xx3 library,
//giving the software serial as port to use
rn2xx3 myLora(mySerial);

// the setup routine runs once when you press reset:
void setup(){
              //output LED pin
              pinMode(13, OUTPUT);
              pinMode(LED, OUTPUT); 
              
              // attache l'interruption externe n°1 à la fonction gestionINT0UP()--0= pin2 et 1= pin3-- 
              attachInterrupt(1, gestionINT0UP, RISING); 
              // attache l'interruption externe n°1 à la fonction gestionINT0DW()
              attachInterrupt(0, gestionINT0DW, FALLING); 
              
              led_on();
            
              // Open serial communications and wait for port to open:
              Serial.begin(57600); //serial port to computer
              mySerial.begin(9600); //serial port to radio
              Serial.println("Startup");
            
              initialize_radio();
            
              //transmit a startup message
              myLora.tx("TTN Mapper on TTN Enschede node");
            
              led_off();
              delay(2000);
  }

void initialize_radio(){
    //reset rn2483
    pinMode(12, OUTPUT);
    
    digitalWrite(12, LOW);
    
    delay(500);
    digitalWrite(12, HIGH);
  
    delay(100); //wait for the RN2xx3's startup message
    mySerial.flush();
  
    //Autobaud the rn2483 module to 9600. The default would otherwise be 57600.
    myLora.autobaud();
  
    //check communication with radio
    String hweui = myLora.hweui();
    
    while(hweui.length() != 16)
      {
        Serial.println("Communication with RN2xx3 unsuccessful. Power cycle the board.");
        Serial.println(hweui);
        delay(10000);
        hweui = myLora.hweui();
      }

    //print out the HWEUI so that we can register it via ttnctl
    Serial.println("When using OTAA, register this DevEUI: ");
    Serial.println(myLora.hweui());
    Serial.println("RN2xx3 firmware version:");
    Serial.println(myLora.sysver());
  
    //configure your keys and join the network
    Serial.println("Trying to join TTN");
    bool join_result = false;


      /*
       * ABP: initABP(String addr, String AppSKey, String NwkSKey);
       * Paste the example code from the TTN console here:
       */
    const char *devAddr = "26011CDB";
    const char *nwkSKey = "4A709BC513CF1D97416EE9273872FEA8";
    const char *appSKey = "38454B03AD26097929C9F252544AABBB";
    
      join_result = myLora.initABP(devAddr, appSKey, nwkSKey);

      /*
       * OTAA: initOTAA(String AppEUI, String AppKey);
       * If you are using OTAA, paste the example code from the TTN console here:
       */
     // const char *appEui = "70B3D57ED0012F19";
     // const char *appKey = "98CA90603691B41BCED065070B394A10";
    
     // join_result = myLora.initOTAA(appEui, appKey);
    

      while(!join_result)
        {
          Serial.println("Unable to join. Are your keys correct, and do you have TTN coverage?");
          delay(60000); //delay a minute before retry
          join_result = myLora.init();
        }
      Serial.println("Successfully joined TTN");
}


// la fonction appelée par l'interruption externe n°1
void gestionINT0UP() { 

  delayMicroseconds(10000);
   if (interup_secuCycle==0){ 
    
    if (interup_secuUp==0){
      digitalWrite(LED, 1);
      Serial.println("Intérruption UP "); 
      Serial.println("LED Allumé");
      interup_secuUp=2;
      }
    }
}

void gestionINT0DW() { 
    delayMicroseconds(10000);
    if (interup_secuCycle==0){

      if (interup_secuDw==0){
        Serial.println("Intérruption DW ");  
        Serial.println("LED Etteinte");
        digitalWrite(LED, 0);
        interup_secuDw = 2;
        interup_secuCycle=2;
        }
    }   
}

// the loop routine runs over and over again forever:
void loop(){
  
    delay(1000);

    sensorValue = analogRead(A0);
    //sensor_volt = analogRead(A0)/1024*5;
    //Res = String(sensor_volt, 3);
    Res = String(sensorValue/1024*5, 3);

    led_on();

    Serial.println("TXing");
    Serial.print("sensor_volt = ");
    Serial.print(Res);
    Serial.println("V");

    interup_secuCycle= 0;
    interup_secuUp= 0;
    interup_secuDw= 0;
    
    myLora.tx(Res); //one byte, blocking function
    //myLora.txCommand("radio tx", "48656c6C6F", false);
    led_off();
}

void led_on(){
  digitalWrite(13, 1);
}

void led_off(){
  digitalWrite(13, 0);
}

