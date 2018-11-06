EESchema Schematic File Version 4
LIBS:SHield-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "lun. 30 mars 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 8950 1450 1    60   ~ 0
Vin
Text Label 9350 1450 1    60   ~ 0
IOREF
Text Label 8900 2500 0    60   ~ 0
A0
Text Label 8900 2600 0    60   ~ 0
A1
Text Label 8900 2700 0    60   ~ 0
A2
Text Label 8900 2800 0    60   ~ 0
A3
Text Label 8900 2900 0    60   ~ 0
A4(SDA)
Text Label 8900 3000 0    60   ~ 0
A5(SCL)
Text Label 10550 3000 0    60   ~ 0
0(Rx)
Text Label 7050 2750 0    60   ~ 0
2
Text Label 10550 2900 0    60   ~ 0
1(Tx)
Text Label 10550 2700 0    60   ~ 0
3(**)
Text Label 10550 2600 0    60   ~ 0
4
Text Label 10550 2500 0    60   ~ 0
5(**)
Text Label 10550 2400 0    60   ~ 0
6(**)
Text Label 10550 2300 0    60   ~ 0
7
Text Label 10550 2100 0    60   ~ 0
8
Text Label 10550 2000 0    60   ~ 0
9(**)
Text Label 10550 1900 0    60   ~ 0
10(**/SS)
Text Label 10550 1800 0    60   ~ 0
11(**/MOSI)
Text Label 10550 1700 0    60   ~ 0
12(MISO)
Text Label 10550 1600 0    60   ~ 0
13(SCK)
Text Label 10550 1400 0    60   ~ 0
AREF
NoConn ~ 9400 1600
Text Notes 10850 1000 0    60   ~ 0
Holes
Text Notes 8550 750  0    60   ~ 0
Shield for Arduino that uses\nthe same pin disposition\nlike "Uno" board Rev 3.
$Comp
L Connector_Generic:Conn_01x08 P1
U 1 1 56D70129
P 9600 1900
F 0 "P1" H 9600 2350 50  0000 C CNN
F 1 "Power" V 9700 1900 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 9750 1900 20  0000 C CNN
F 3 "" H 9600 1900 50  0000 C CNN
	1    9600 1900
	1    0    0    -1  
$EndComp
Text Label 8650 1800 0    60   ~ 0
Reset
$Comp
L power:+3.3V #PWR01
U 1 1 56D70538
P 9150 1450
F 0 "#PWR01" H 9150 1300 50  0001 C CNN
F 1 "+3.3V" V 9150 1700 50  0000 C CNN
F 2 "" H 9150 1450 50  0000 C CNN
F 3 "" H 9150 1450 50  0000 C CNN
	1    9150 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 56D707BB
P 9050 1350
F 0 "#PWR02" H 9050 1200 50  0001 C CNN
F 1 "+5V" V 9050 1550 50  0000 C CNN
F 2 "" H 9050 1350 50  0000 C CNN
F 3 "" H 9050 1350 50  0000 C CNN
	1    9050 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 56D70CC2
P 9300 3150
F 0 "#PWR03" H 9300 2900 50  0001 C CNN
F 1 "GND" H 9300 3000 50  0000 C CNN
F 2 "" H 9300 3150 50  0000 C CNN
F 3 "" H 9300 3150 50  0000 C CNN
	1    9300 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 56D70CFF
P 10300 3150
F 0 "#PWR04" H 10300 2900 50  0001 C CNN
F 1 "GND" H 10300 3000 50  0000 C CNN
F 2 "" H 10300 3150 50  0000 C CNN
F 3 "" H 10300 3150 50  0000 C CNN
	1    10300 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 P2
U 1 1 56D70DD8
P 9600 2700
F 0 "P2" H 9600 2300 50  0000 C CNN
F 1 "Analog" V 9700 2700 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x06" V 9750 2750 20  0000 C CNN
F 3 "" H 9600 2700 50  0000 C CNN
	1    9600 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P5
U 1 1 56D71177
P 10800 650
F 0 "P5" V 10900 650 50  0000 C CNN
F 1 "CONN_01X01" V 10900 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10721 724 20  0000 C CNN
F 3 "" H 10800 650 50  0000 C CNN
	1    10800 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P6
U 1 1 56D71274
P 10900 650
F 0 "P6" V 11000 650 50  0000 C CNN
F 1 "CONN_01X01" V 11000 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10900 650 20  0001 C CNN
F 3 "" H 10900 650 50  0000 C CNN
	1    10900 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P7
U 1 1 56D712A8
P 11000 650
F 0 "P7" V 11100 650 50  0000 C CNN
F 1 "CONN_01X01" V 11100 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" V 11000 650 20  0001 C CNN
F 3 "" H 11000 650 50  0000 C CNN
	1    11000 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P8
U 1 1 56D712DB
P 11100 650
F 0 "P8" V 11200 650 50  0000 C CNN
F 1 "CONN_01X01" V 11200 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 11024 572 20  0000 C CNN
F 3 "" H 11100 650 50  0000 C CNN
	1    11100 650 
	0    -1   -1   0   
$EndComp
NoConn ~ 10800 850 
NoConn ~ 10900 850 
NoConn ~ 11000 850 
NoConn ~ 11100 850 
$Comp
L Connector_Generic:Conn_01x08 P4
U 1 1 56D7164F
P 10000 2600
F 0 "P4" H 10000 2100 50  0000 C CNN
F 1 "Digital" V 10100 2600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 10150 2550 20  0000 C CNN
F 3 "" H 10000 2600 50  0000 C CNN
	1    10000 2600
	-1   0    0    -1  
$EndComp
Wire Notes Line
	8525 825  9925 825 
Wire Notes Line
	9925 825  9925 475 
Wire Wire Line
	9350 1450 9350 1700
Wire Wire Line
	9350 1700 9400 1700
Wire Wire Line
	9400 1900 9150 1900
Wire Wire Line
	9400 2000 9050 2000
Wire Wire Line
	9400 2300 8950 2300
Wire Wire Line
	9400 2100 9300 2100
Wire Wire Line
	9400 2200 9300 2200
Connection ~ 9300 2200
Wire Wire Line
	8950 2300 8950 1450
Wire Wire Line
	9050 2000 9050 1350
Wire Wire Line
	9150 1900 9150 1450
Wire Wire Line
	9400 2500 8900 2500
Wire Wire Line
	9400 2600 8900 2600
Wire Wire Line
	9400 2700 8900 2700
Wire Wire Line
	9400 2800 8900 2800
Wire Wire Line
	9400 2900 8900 2900
Wire Wire Line
	9400 3000 8900 3000
$Comp
L Connector_Generic:Conn_01x10 P3
U 1 1 56D721E0
P 10000 1600
F 0 "P3" H 10000 2150 50  0000 C CNN
F 1 "Digital" V 10100 1600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x10" V 10150 1600 20  0000 C CNN
F 3 "" H 10000 1600 50  0000 C CNN
	1    10000 1600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10200 2100 10550 2100
Wire Wire Line
	10200 2000 10550 2000
Wire Wire Line
	10200 1900 10550 1900
Wire Wire Line
	10200 1800 10550 1800
Wire Wire Line
	10200 1700 10550 1700
Wire Wire Line
	10200 1600 10550 1600
Wire Wire Line
	10200 1400 10550 1400
Wire Wire Line
	10200 1300 10550 1300
Wire Wire Line
	10200 1200 10550 1200
Wire Wire Line
	10200 3000 10550 3000
Wire Wire Line
	10200 2900 10550 2900
Wire Wire Line
	10200 2800 10550 2800
Wire Wire Line
	10200 2700 10550 2700
Wire Wire Line
	10200 2600 10550 2600
Wire Wire Line
	10200 2500 10550 2500
Wire Wire Line
	10200 2400 10550 2400
Wire Wire Line
	10200 2300 10550 2300
Wire Wire Line
	10200 1500 10300 1500
Wire Wire Line
	10300 1500 10300 3150
Wire Wire Line
	9300 2100 9300 2200
Wire Wire Line
	9300 2200 9300 3100
Wire Notes Line
	8500 500  8500 3450
Wire Notes Line
	8500 3450 11200 3450
Wire Wire Line
	9400 1800 8650 1800
Text Notes 9700 1600 0    60   ~ 0
1
Wire Notes Line
	11200 1000 10700 1000
Wire Notes Line
	10700 1000 10700 500 
$Comp
L Connector:Conn_01x08_Female J1
U 1 1 5BC6E495
P 3450 1900
F 0 "J1" H 3477 1876 50  0000 L CNN
F 1 "Conn_01x08_Female" H 3477 1785 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 3450 1900 50  0001 C CNN
F 3 "~" H 3450 1900 50  0001 C CNN
	1    3450 1900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J2
U 1 1 5BC6E4F1
P 3100 3550
F 0 "J2" H 3127 3526 50  0000 L CNN
F 1 "Conn_01x04_Female" H 3127 3435 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 3100 3550 50  0001 C CNN
F 3 "~" H 3100 3550 50  0001 C CNN
	1    3100 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1600 2900 1600
Wire Wire Line
	3250 1700 2900 1700
Wire Wire Line
	3250 1800 2900 1800
Wire Wire Line
	3250 1900 2900 1900
Wire Wire Line
	3250 2000 2900 2000
Wire Wire Line
	3250 2100 2900 2100
Wire Wire Line
	3250 2200 2900 2200
Wire Wire Line
	3250 2300 2900 2300
$Comp
L Comparator:LM393 U1
U 1 1 5BC7B978
P 6200 3000
F 0 "U1" H 6200 3367 50  0000 C CNN
F 1 "LM393" H 6200 3276 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_LongPads" H 6200 3000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm393-n.pdf" H 6200 3000 50  0001 C CNN
	1    6200 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5BC7BAC0
P 2900 2300
F 0 "#PWR0101" H 2900 2050 50  0001 C CNN
F 1 "GND" H 2905 2127 50  0000 C CNN
F 2 "" H 2900 2300 50  0001 C CNN
F 3 "" H 2900 2300 50  0001 C CNN
	1    2900 2300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0102
U 1 1 5BC7BBA9
P 2900 2100
F 0 "#PWR0102" H 2900 1950 50  0001 C CNN
F 1 "+3.3V" V 2915 2228 50  0000 L CNN
F 2 "" H 2900 2100 50  0001 C CNN
F 3 "" H 2900 2100 50  0001 C CNN
	1    2900 2100
	0    -1   -1   0   
$EndComp
Text Label 2900 1600 2    60   ~ 0
11(**/MOSI)
Text Label 2900 1700 2    60   ~ 0
12(MISO)
Text Label 2900 2000 2    60   ~ 0
13(SCK)
NoConn ~ 2900 1800
NoConn ~ 2900 1900
Wire Notes Line
	2200 1450 4450 1450
Wire Notes Line
	4450 1450 4450 2600
Wire Notes Line
	4450 2600 2200 2600
Wire Notes Line
	2200 2600 2200 1450
Text Notes 3800 2550 0    50   ~ 0
Connecteur LoRa\n
NoConn ~ 2900 2200
Text Label 2900 3750 2    60   ~ 0
A1
Wire Notes Line
	2600 3100 3950 3100
Wire Notes Line
	3950 3100 3950 4100
Wire Notes Line
	3950 4100 2600 4100
Wire Notes Line
	2600 4100 2600 3100
Text Notes 3250 4050 0    50   ~ 0
étage ampli, gaz
$Comp
L Connector:Conn_01x04_Female J3
U 1 1 5BC95039
P 5650 1800
F 0 "J3" H 5677 1776 50  0000 L CNN
F 1 "Conn_01x04_Female" H 5677 1685 50  0000 L CNN
F 2 "Connector:NS-Tech_Grove_1x04_P2mm_Vertical" H 5650 1800 50  0001 C CNN
F 3 "~" H 5650 1800 50  0001 C CNN
	1    5650 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0105
U 1 1 5BC950C9
P 5450 1700
F 0 "#PWR0105" H 5450 1550 50  0001 C CNN
F 1 "+5V" V 5465 1828 50  0000 L CNN
F 2 "" H 5450 1700 50  0001 C CNN
F 3 "" H 5450 1700 50  0001 C CNN
	1    5450 1700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5BC9512E
P 5450 1800
F 0 "#PWR0106" H 5450 1550 50  0001 C CNN
F 1 "GND" V 5455 1672 50  0000 R CNN
F 2 "" H 5450 1800 50  0001 C CNN
F 3 "" H 5450 1800 50  0001 C CNN
	1    5450 1800
	0    1    1    0   
$EndComp
NoConn ~ 5450 1900
Text Label 5450 2000 2    60   ~ 0
A0
Wire Notes Line
	5100 1600 6500 1600
Wire Notes Line
	6500 1600 6500 2100
Wire Notes Line
	6500 2100 5100 2100
Wire Notes Line
	5100 2100 5100 1600
Text Notes 6000 2050 0    50   ~ 0
grove gaz
$Comp
L Device:R R1
U 1 1 5BC99DC3
P 5600 3100
F 0 "R1" H 5670 3146 50  0000 L CNN
F 1 "R" H 5670 3055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5530 3100 50  0001 C CNN
F 3 "~" H 5600 3100 50  0001 C CNN
	1    5600 3100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 5BC99E2F
P 5800 3250
F 0 "R2" H 5870 3296 50  0000 L CNN
F 1 "R" H 5870 3205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5730 3250 50  0001 C CNN
F 3 "~" H 5800 3250 50  0001 C CNN
	1    5800 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5BC99EB9
P 6900 3150
F 0 "R3" H 6970 3196 50  0000 L CNN
F 1 "R" H 6970 3105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6830 3150 50  0001 C CNN
F 3 "~" H 6900 3150 50  0001 C CNN
	1    6900 3150
	1    0    0    -1  
$EndComp
Text Label 7050 3000 0    60   ~ 0
3(**)
Connection ~ 6900 3000
Wire Wire Line
	6900 3000 7050 3000
$Comp
L power:GND #PWR0107
U 1 1 5BCA1255
P 6900 3300
F 0 "#PWR0107" H 6900 3050 50  0001 C CNN
F 1 "GND" H 6900 3150 50  0000 C CNN
F 2 "" H 6900 3300 50  0000 C CNN
F 3 "" H 6900 3300 50  0000 C CNN
	1    6900 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 3100 5800 3100
Connection ~ 5800 3100
Wire Wire Line
	5800 3100 5900 3100
$Comp
L power:GND #PWR0108
U 1 1 5BCA8FA3
P 5800 3400
F 0 "#PWR0108" H 5800 3150 50  0001 C CNN
F 1 "GND" H 5800 3250 50  0000 C CNN
F 2 "" H 5800 3400 50  0000 C CNN
F 3 "" H 5800 3400 50  0000 C CNN
	1    5800 3400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0109
U 1 1 5BCAA7BD
P 5450 3100
F 0 "#PWR0109" H 5450 2950 50  0001 C CNN
F 1 "+5V" V 5465 3228 50  0000 L CNN
F 2 "" H 5450 3100 50  0001 C CNN
F 3 "" H 5450 3100 50  0001 C CNN
	1    5450 3100
	0    -1   -1   0   
$EndComp
Wire Notes Line
	5000 3650 5000 2600
Text Notes 6500 3600 0    50   ~ 0
comparateur\n
$Comp
L Device:LED D1
U 1 1 5BCAC0D9
P 7350 1800
F 0 "D1" H 7342 1545 50  0000 C CNN
F 1 "LED" H 7342 1636 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_FlatTop" H 7350 1800 50  0001 C CNN
F 3 "~" H 7350 1800 50  0001 C CNN
	1    7350 1800
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5BCAC1F4
P 7500 2100
F 0 "#PWR0110" H 7500 1850 50  0001 C CNN
F 1 "GND" H 7500 1950 50  0000 C CNN
F 2 "" H 7500 2100 50  0000 C CNN
F 3 "" H 7500 2100 50  0000 C CNN
	1    7500 2100
	1    0    0    -1  
$EndComp
Wire Notes Line
	6950 1500 7700 1500
Text Notes 7050 2000 0    50   ~ 0
Alarme\n
Text Label 5900 2900 2    60   ~ 0
A0
Wire Wire Line
	6900 3000 6900 2750
Wire Wire Line
	6900 2750 7050 2750
Text Label 10550 2800 0    60   ~ 0
2
$Comp
L Device:R R4
U 1 1 5BC8F0EF
P 7500 1950
F 0 "R4" H 7570 1996 50  0000 L CNN
F 1 "R" H 7570 1905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 7430 1950 50  0001 C CNN
F 3 "~" H 7500 1950 50  0001 C CNN
	1    7500 1950
	1    0    0    -1  
$EndComp
Wire Notes Line
	7700 1500 7700 2400
Wire Notes Line
	7700 2400 6950 2400
Wire Notes Line
	6950 1500 6950 2400
$Comp
L power:+3.3V #PWR0111
U 1 1 5BC95FC4
P 7200 1800
F 0 "#PWR0111" H 7200 1650 50  0001 C CNN
F 1 "+3.3V" V 7215 1928 50  0000 L CNN
F 2 "" H 7200 1800 50  0001 C CNN
F 3 "" H 7200 1800 50  0001 C CNN
	1    7200 1800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5BC9D337
P 2900 3550
F 0 "#PWR0104" H 2900 3300 50  0001 C CNN
F 1 "GND" H 2900 3400 50  0000 C CNN
F 2 "" H 2900 3550 50  0000 C CNN
F 3 "" H 2900 3550 50  0000 C CNN
	1    2900 3550
	0    1    1    0   
$EndComp
Text Label 10850 1200 0    60   ~ 0
A5(SCL)
Text Label 10850 1300 0    60   ~ 0
A4(SDA)
NoConn ~ 10850 1200
NoConn ~ 10850 1300
NoConn ~ 10550 1200
NoConn ~ 10550 1300
$Comp
L Device:C C1
U 1 1 5BCE2355
P 6500 3150
F 0 "C1" H 6615 3196 50  0000 L CNN
F 1 "C" H 6615 3105 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P5.00mm" H 6538 3000 50  0001 C CNN
F 3 "~" H 6500 3150 50  0001 C CNN
	1    6500 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5BCE242E
P 6500 3300
F 0 "#PWR0112" H 6500 3050 50  0001 C CNN
F 1 "GND" H 6505 3127 50  0000 C CNN
F 2 "" H 6500 3300 50  0001 C CNN
F 3 "" H 6500 3300 50  0001 C CNN
	1    6500 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3000 6900 3000
Connection ~ 6500 3000
Wire Notes Line
	7550 3650 7550 2600
Wire Notes Line
	5000 2600 7550 2600
Wire Notes Line
	5000 3650 7550 3650
Text Label 2900 3650 2    60   ~ 0
4
$Comp
L power:+5V #PWR?
U 1 1 5BE1A15D
P 2900 3450
F 0 "#PWR?" H 2900 3300 50  0001 C CNN
F 1 "+5V" V 2915 3578 50  0000 L CNN
F 2 "" H 2900 3450 50  0001 C CNN
F 3 "" H 2900 3450 50  0001 C CNN
	1    2900 3450
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5BE16345
P 8800 1200
F 0 "#FLG?" H 8800 1275 50  0001 C CNN
F 1 "PWR_FLAG" H 8800 1374 50  0000 C CNN
F 2 "" H 8800 1200 50  0001 C CNN
F 3 "~" H 8800 1200 50  0001 C CNN
	1    8800 1200
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5BE1638B
P 9450 1100
F 0 "#FLG?" H 9450 1175 50  0001 C CNN
F 1 "PWR_FLAG" H 9450 1274 50  0000 C CNN
F 2 "" H 9450 1100 50  0001 C CNN
F 3 "~" H 9450 1100 50  0001 C CNN
	1    9450 1100
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5BE163D1
P 8950 3200
F 0 "#FLG?" H 8950 3275 50  0001 C CNN
F 1 "PWR_FLAG" V 8950 3328 50  0000 L CNN
F 2 "" H 8950 3200 50  0001 C CNN
F 3 "~" H 8950 3200 50  0001 C CNN
	1    8950 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8950 3200 9000 3200
Wire Wire Line
	9000 3200 9000 3100
Wire Wire Line
	9000 3100 9300 3100
Connection ~ 9300 3100
Wire Wire Line
	9300 3100 9300 3150
Wire Wire Line
	8800 1200 8800 1350
Wire Wire Line
	8800 1350 9050 1350
Connection ~ 9050 1350
Wire Wire Line
	9150 1450 9250 1450
Wire Wire Line
	9250 1450 9250 1100
Wire Wire Line
	9250 1100 9450 1100
Connection ~ 9150 1450
$EndSCHEMATC
