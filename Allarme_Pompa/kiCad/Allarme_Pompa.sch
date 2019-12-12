EESchema Schematic File Version 4
LIBS:Allarme_Pompa-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Allarme per pompa cisterna"
Date "dec. 2019"
Rev ""
Comp ""
Comment1 ""
Comment2 "Esaurito un determinato tempo Arduino provvede direttamente a spegnere la pompa"
Comment3 "Il tutto prosegue fino a che la pompa si spegne"
Comment4 "Quando la pompa si accende Arduino provvede ad emettere dei suoni "
$EndDescr
$Comp
L MCU_Module:Arduino_Nano_v3.x A?
U 1 1 5DEB7096
P 5750 2800
F 0 "A?" H 5750 1714 50  0001 C CNN
F 1 "Arduino_Nano_v3.x" V 5750 2650 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 5900 1850 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 5750 1800 50  0001 C CNN
	1    5750 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5DEB74D1
P 2200 3700
F 0 "R?" H 2268 3746 50  0001 L CNN
F 1 "100" H 2268 3655 50  0000 L CNN
F 2 "" V 2240 3690 50  0001 C CNN
F 3 "~" H 2200 3700 50  0001 C CNN
	1    2200 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D?
U 1 1 5DEB73CD
P 2200 4100
F 0 "D?" V 2238 3982 50  0001 R CNN
F 1 "LED" V 2147 3982 50  0000 R CNN
F 2 "" H 2200 4100 50  0001 C CNN
F 3 "~" H 2200 4100 50  0001 C CNN
	1    2200 4100
	0    -1   -1   0   
$EndComp
$Comp
L Device:Buzzer BZ?
U 1 1 5DEBAA3F
P 1800 4100
F 0 "BZ?" H 1850 4100 50  0001 C CNN
F 1 "Passive Buzzer" H 2050 4300 50  0000 C CNN
F 2 "" V 1775 4200 50  0001 C CNN
F 3 "~" V 1775 4200 50  0001 C CNN
	1    1800 4100
	-1   0    0    -1  
$EndComp
$Comp
L LnConnectors:CONN_02 J?
U 1 1 5DEBCAE0
P 9500 1300
F 0 "J?" V 9503 1628 60  0001 L CNN
F 1 "220V" V 9400 1400 60  0000 L CNN
F 2 "" H 9500 1300 60  0000 C CNN
F 3 "" H 9500 1300 60  0000 C CNN
	1    9500 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3850 2200 3950
Wire Notes Line
	10050 3300 10050 3600
Wire Notes Line
	10050 3600 10950 3600
Wire Notes Line
	10950 3600 10950 3300
Wire Notes Line
	10950 3300 10050 3300
Text Notes 10250 3500 0    50   ~ 0
PressControl
Wire Notes Line
	10050 4400 10050 4700
Wire Notes Line
	10050 4700 10950 4700
Wire Notes Line
	10950 4700 10950 4400
Wire Notes Line
	10950 4400 10050 4400
Text Notes 10250 4600 0    50   ~ 0
Pump
Wire Wire Line
	9650 5400 9650 5150
Wire Wire Line
	1900 4200 1900 4400
Wire Wire Line
	2200 4250 2200 4400
Text Label 3600 3400 0    50   ~ 0
Buzzer
Text Label 3600 3500 0    50   ~ 0
BlinkingLED
Wire Wire Line
	1900 4000 1900 3400
Wire Wire Line
	5100 2400 5250 2400
$Comp
L power:GNDA #PWR?
U 1 1 5DF1D0BD
P 9700 4300
F 0 "#PWR?" H 9700 4050 50  0001 C CNN
F 1 "GNDA" H 9800 4200 50  0000 C CNN
F 2 "" H 9700 4300 50  0001 C CNN
F 3 "" H 9700 4300 50  0001 C CNN
	1    9700 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF1F5E5
P 2800 1400
F 0 "#PWR?" H 2800 1150 50  0001 C CNN
F 1 "GND" H 2805 1227 50  0000 C CNN
F 2 "" H 2800 1400 50  0001 C CNN
F 3 "" H 2800 1400 50  0001 C CNN
	1    2800 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1200 2800 1200
Wire Wire Line
	2800 1200 2800 1400
$Comp
L power:+5V #PWR?
U 1 1 5DF218E3
P 5950 850
F 0 "#PWR?" H 5950 700 50  0001 C CNN
F 1 "+5V" H 5965 1023 50  0000 C CNN
F 2 "" H 5950 850 50  0001 C CNN
F 3 "" H 5950 850 50  0001 C CNN
	1    5950 850 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF22BEF
P 5750 3950
F 0 "#PWR?" H 5750 3700 50  0001 C CNN
F 1 "GND" H 5755 3777 50  0000 C CNN
F 2 "" H 5750 3950 50  0001 C CNN
F 3 "" H 5750 3950 50  0001 C CNN
	1    5750 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 3800 5750 3850
Wire Wire Line
	5750 3850 5850 3850
Wire Wire Line
	5850 3850 5850 3800
Connection ~ 5750 3850
Wire Wire Line
	5750 3850 5750 3950
$Comp
L LnConnectors:CONN_02 J?
U 1 1 5DF28262
P 1800 1250
F 0 "J?" H 1856 1737 60  0001 C CNN
F 1 "220V" V 1650 1450 60  0000 C CNN
F 2 "" H 1800 1250 60  0000 C CNN
F 3 "" H 1800 1250 60  0000 C CNN
	1    1800 1250
	1    0    0    -1  
$EndComp
Text Notes 6750 3600 0    50   ~ 0
Celeste
Text Notes 6750 3700 0    50   ~ 0
Bianco/Celeste
Text Notes 6750 3000 0    50   ~ 0
Marrone
Text Notes 6750 3100 0    50   ~ 0
Bianco/Marrone
Text Notes 6750 3400 0    50   ~ 0
Arancio
Text Notes 6750 3500 0    50   ~ 0
Bianco/Arancio
Text Notes 6750 3200 0    50   ~ 0
Verde
Wire Wire Line
	10700 1050 10500 1050
Wire Wire Line
	9650 1050 9800 1050
Wire Wire Line
	9650 1150 9800 1150
$Comp
L power:GNDA #PWR?
U 1 1 5DF0F3FB
P 9200 5750
F 0 "#PWR?" H 9200 5500 50  0001 C CNN
F 1 "GNDA" H 9205 5577 50  0000 C CNN
F 2 "" H 9200 5750 50  0001 C CNN
F 3 "" H 9200 5750 50  0001 C CNN
	1    9200 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5DF0F410
P 9850 5450
F 0 "#PWR?" H 9850 5200 50  0001 C CNN
F 1 "GNDA" H 9855 5277 50  0000 C CNN
F 2 "" H 9850 5450 50  0001 C CNN
F 3 "" H 9850 5450 50  0001 C CNN
	1    9850 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 5700 9200 5750
$Comp
L LnDevice:sOnOff_Basic K?
U 1 1 5DEED482
P 10150 1200
F 0 "K?" H 10150 1642 50  0000 C CNN
F 1 "sOnOff_Basic" H 10150 1551 50  0000 C CNN
F 2 "sOnOff" H 10250 975 25  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 10175 1025 50  0001 C CNN
	1    10150 1200
	1    0    0    -1  
$EndComp
$Comp
L power:+5VA #PWR?
U 1 1 5DF176AA
P 9500 2450
F 0 "#PWR?" H 9500 2300 50  0001 C CNN
F 1 "+5VA" H 9515 2623 50  0000 C CNN
F 2 "" H 9500 2450 50  0001 C CNN
F 3 "" H 9500 2450 50  0001 C CNN
	1    9500 2450
	1    0    0    -1  
$EndComp
$Comp
L LnDevice:Relay_5V_LL RL?
U 1 1 5DF237EE
P 9200 5400
F 0 "RL?" H 9200 5878 50  0001 C CNN
F 1 "Relay_5V_LL" H 9200 5100 50  0000 C CNN
F 2 "" H 9200 5400 50  0001 C CNN
F 3 "" H 9200 5400 50  0001 C CNN
	1    9200 5400
	1    0    0    -1  
$EndComp
$Comp
L LnConnectors:Mammuth_09a MM?
U 1 1 5DF28D2C
P 7500 3400
F 0 "MM?" H 7628 3438 40  0001 L CNN
F 1 "Mammuth_09a" H 7628 3400 40  0001 L CNN
F 2 "" H 7525 3650 60  0000 C CNN
F 3 "" H 7525 3650 60  0000 C CNN
	1    7500 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5DF30D15
P 1100 6750
F 0 "#PWR?" H 1100 6500 50  0001 C CNN
F 1 "GNDA" H 1105 6577 50  0000 C CNN
F 2 "" H 1100 6750 50  0001 C CNN
F 3 "" H 1100 6750 50  0001 C CNN
	1    1100 6750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF30D28
P 7200 4000
F 0 "#PWR?" H 7200 3750 50  0001 C CNN
F 1 "GND" H 7205 3827 50  0000 C CNN
F 2 "" H 7200 4000 50  0001 C CNN
F 3 "" H 7200 4000 50  0001 C CNN
	1    7200 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:Speaker LS?
U 1 1 5DF4E72D
P 9850 5050
F 0 "LS?" H 10019 5046 50  0001 L CNN
F 1 "Horn" H 10019 5000 50  0000 L CNN
F 2 "" H 9850 4850 50  0001 C CNN
F 3 "~" H 9840 5000 50  0001 C CNN
	1    9850 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4000 7200 3800
Wire Wire Line
	7200 3800 7500 3800
Wire Wire Line
	5100 2500 5250 2500
Wire Wire Line
	5100 2600 5250 2600
Wire Wire Line
	5100 2700 5250 2700
Wire Wire Line
	3100 3500 5250 3500
Wire Wire Line
	3100 3400 5250 3400
Wire Wire Line
	5950 850  5950 1000
Wire Wire Line
	2700 1000 5950 1000
Connection ~ 5950 1000
$Comp
L power:GND #PWR?
U 1 1 5DFBEF66
P 3200 3700
F 0 "#PWR?" H 3200 3450 50  0001 C CNN
F 1 "GND" H 3205 3527 50  0000 C CNN
F 2 "" H 3200 3700 50  0001 C CNN
F 3 "" H 3200 3700 50  0001 C CNN
	1    3200 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 4400 2200 4400
Wire Wire Line
	2200 3550 2200 3500
Wire Wire Line
	2200 3500 2650 3500
Wire Wire Line
	2200 4400 2550 4400
Wire Wire Line
	2550 4400 2550 3600
Wire Wire Line
	2550 3600 2650 3600
Connection ~ 2200 4400
Wire Wire Line
	1900 3400 2650 3400
Wire Wire Line
	3100 3600 3200 3600
Wire Wire Line
	3200 3600 3200 3700
Entry Wire Line
	3400 2600 3500 2500
Entry Wire Line
	3400 2700 3500 2600
Entry Wire Line
	3400 2800 3500 2700
Entry Wire Line
	3400 2500 3500 2400
$Comp
L power:GND #PWR?
U 1 1 5E04EFD1
P 4650 1950
F 0 "#PWR?" H 4650 1700 50  0001 C CNN
F 1 "GND" H 4750 1950 50  0000 C CNN
F 2 "" H 4650 1950 50  0001 C CNN
F 3 "" H 4650 1950 50  0001 C CNN
	1    4650 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2300 5100 1900
Text Label 3600 2400 0    50   ~ 0
pumpState
Text Label 3600 2500 0    50   ~ 0
pressControlPower
Text Label 3600 2600 0    50   ~ 0
Horn
Text Label 3600 2700 0    50   ~ 0
ElettroValvola
Wire Wire Line
	3500 2400 4650 2400
Wire Wire Line
	3500 2500 4650 2500
Wire Wire Line
	3500 2600 4650 2600
Wire Wire Line
	3500 2700 4650 2700
Entry Wire Line
	3400 2400 3500 2300
Wire Wire Line
	3500 2300 4650 2300
$Comp
L Graphic:SYM_Arrow_Normal #SYM?
U 1 1 5E07F74E
P 4575 2350
F 0 "#SYM?" H 4575 2410 50  0001 C CNN
F 1 "SYM_Arrow_Normal" H 4585 2300 50  0001 C CNN
F 2 "" H 4575 2350 50  0001 C CNN
F 3 "~" H 4575 2350 50  0001 C CNN
	1    4575 2350
	1    0    0    -1  
$EndComp
$Comp
L Graphic:SYM_Arrow_Normal #SYM?
U 1 1 5E07F78F
P 4575 2450
F 0 "#SYM?" H 4575 2510 50  0001 C CNN
F 1 "SYM_Arrow_Normal" H 4585 2400 50  0001 C CNN
F 2 "" H 4575 2450 50  0001 C CNN
F 3 "~" H 4575 2450 50  0001 C CNN
	1    4575 2450
	-1   0    0    -1  
$EndComp
$Comp
L Graphic:SYM_Arrow_Normal #SYM?
U 1 1 5E07F7A2
P 4575 2550
F 0 "#SYM?" H 4575 2610 50  0001 C CNN
F 1 "SYM_Arrow_Normal" H 4585 2500 50  0001 C CNN
F 2 "" H 4575 2550 50  0001 C CNN
F 3 "~" H 4575 2550 50  0001 C CNN
	1    4575 2550
	-1   0    0    -1  
$EndComp
$Comp
L Graphic:SYM_Arrow_Normal #SYM?
U 1 1 5E07F7B5
P 4575 2650
F 0 "#SYM?" H 4575 2710 50  0001 C CNN
F 1 "SYM_Arrow_Normal" H 4585 2600 50  0001 C CNN
F 2 "" H 4575 2650 50  0001 C CNN
F 3 "~" H 4575 2650 50  0001 C CNN
	1    4575 2650
	-1   0    0    -1  
$EndComp
$Comp
L Graphic:SYM_Arrow_Normal #SYM?
U 1 1 5E07F801
P 4650 3350
F 0 "#SYM?" H 4650 3410 50  0001 C CNN
F 1 "SYM_Arrow_Normal" H 4660 3300 50  0001 C CNN
F 2 "" H 4650 3350 50  0001 C CNN
F 3 "~" H 4650 3350 50  0001 C CNN
	1    4650 3350
	-1   0    0    -1  
$EndComp
$Comp
L Graphic:SYM_Arrow_Normal #SYM?
U 1 1 5E07F814
P 4650 3450
F 0 "#SYM?" H 4650 3510 50  0001 C CNN
F 1 "SYM_Arrow_Normal" H 4660 3400 50  0001 C CNN
F 2 "" H 4650 3450 50  0001 C CNN
F 3 "~" H 4650 3450 50  0001 C CNN
	1    4650 3450
	-1   0    0    -1  
$EndComp
Entry Wire Line
	6600 3100 6700 3000
Entry Wire Line
	6600 3200 6700 3100
Entry Wire Line
	6600 3400 6700 3300
Entry Wire Line
	6600 3800 6700 3700
Entry Wire Line
	6600 3600 6700 3500
Wire Wire Line
	5950 1000 5950 1800
Text Label 7700 3300 0    50   ~ 0
pumpState
$Comp
L LnDevice:Alimentatore Al_5Vcc?
U 1 1 5DF2F833
P 10100 2700
F 0 "Al_5Vcc?" H 10250 2500 40  0001 R CNN
F 1 "Alimentatore" H 10200 2400 40  0001 R CNN
F 2 "5V pressControl" H 10100 2650 30  0000 C CNN
F 3 "" H 10100 2675 60  0000 C CNN
	1    10100 2700
	-1   0    0    -1  
$EndComp
Text Label 7700 3100 0    50   ~ 0
pressControlState
Text Notes 700  4650 0    50   ~ 0
‍pressControlState, porta 5Vcc che accendono direttamente il LED
Text Notes 700  4750 0    50   ~ 0
e lo stato viene al contempo rilevato da Arduino.
Wire Wire Line
	8150 3500 7500 3500
Wire Wire Line
	6700 3000 7500 3000
Wire Wire Line
	6700 3100 7500 3100
$Comp
L LnConnectors:Mammuth_09a MM?
U 1 1 5DF5DA63
P 3100 5900
F 0 "MM?" H 3228 5938 40  0001 L CNN
F 1 "Mammuth_09a" H 3228 5900 40  0001 L CNN
F 2 "" H 3125 6150 60  0000 C CNN
F 3 "" H 3125 6150 60  0000 C CNN
	1    3100 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF5DA69
P 2800 6750
F 0 "#PWR?" H 2800 6500 50  0001 C CNN
F 1 "GND" H 2805 6577 50  0000 C CNN
F 2 "" H 2800 6750 50  0001 C CNN
F 3 "" H 2800 6750 50  0001 C CNN
	1    2800 6750
	1    0    0    -1  
$EndComp
Text Notes 6750 3300 0    50   ~ 0
Bianco/Verde
Wire Wire Line
	6700 3700 7500 3700
Entry Wire Line
	4050 6200 4150 6300
Entry Wire Line
	4050 6000 4150 6100
Entry Wire Line
	4050 5800 4150 5900
Entry Wire Line
	4050 5600 4150 5700
Entry Wire Line
	4050 5500 4150 5600
Entry Wire Line
	4050 5700 4150 5800
Entry Wire Line
	4050 5900 4150 6000
Entry Wire Line
	4050 6100 4150 6200
Entry Wire Line
	6600 3700 6700 3600
Entry Wire Line
	6600 3500 6700 3400
Entry Wire Line
	6600 3300 6700 3200
Wire Wire Line
	6700 3200 7500 3200
Wire Wire Line
	6700 3400 7500 3400
Wire Wire Line
	6700 3600 7500 3600
$Comp
L LnDevice:PulsanteNO SW?
U 1 1 5DFEEB6E
P 2600 6350
F 0 "SW?" V 2450 6400 50  0001 C CNN
F 1 "PCButton" V 2700 6200 40  0000 C CNN
F 2 "" H 2600 6350 60  0000 C CNN
F 3 "" H 2600 6350 60  0000 C CNN
	1    2600 6350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_ALT D?
U 1 1 5DFEEBE6
P 1400 6200
F 0 "D?" V 1438 6082 50  0001 R CNN
F 1 "PCState" V 1500 6300 50  0000 R CNN
F 2 "" H 1400 6200 50  0001 C CNN
F 3 "~" H 1400 6200 50  0001 C CNN
	1    1400 6200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5DFEEBEC
P 1400 5850
F 0 "R?" H 1468 5896 50  0001 L CNN
F 1 "470" V 1300 5750 50  0000 L CNN
F 2 "" V 1440 5840 50  0001 C CNN
F 3 "~" H 1400 5850 50  0001 C CNN
	1    1400 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 6000 1400 6050
Text Label 9300 1700 0    50   ~ 0
pc_button
Text Label 9900 2350 0    50   ~ 0
pc_GND
Text Label 7700 3700 0    50   ~ 0
pc_button
Wire Wire Line
	8900 1700 8900 3700
Wire Wire Line
	10700 1050 10700 2800
Wire Wire Line
	10500 1150 10500 2600
Wire Wire Line
	9700 1900 9700 2800
Wire Wire Line
	9500 2450 9500 2600
Wire Wire Line
	9800 2800 9700 2800
Connection ~ 9700 2800
Wire Wire Line
	9700 2800 9700 3100
Wire Wire Line
	9800 2600 9500 2600
Connection ~ 9500 2600
Wire Wire Line
	9500 2600 9500 3000
Wire Wire Line
	10400 2600 10500 2600
Connection ~ 10500 2600
Wire Wire Line
	10500 2600 10500 3300
Wire Wire Line
	10400 2800 10700 2800
Connection ~ 10700 2800
Wire Wire Line
	10700 2800 10700 3300
Connection ~ 9700 3100
Wire Wire Line
	9700 3100 9700 4100
Text Notes 3300 6100 0    50   ~ 0
Celeste
Text Notes 3300 6200 0    50   ~ 0
Bianco/Celeste
Text Notes 3300 5500 0    50   ~ 0
Marrone
Text Notes 3300 5600 0    50   ~ 0
Bianco/Marrone
Text Notes 3300 5900 0    50   ~ 0
Arancio
Text Notes 3300 6000 0    50   ~ 0
Bianco/Arancio
Text Notes 3300 5700 0    50   ~ 0
Verde
Wire Wire Line
	4050 5800 3100 5800
Wire Wire Line
	3100 5500 4050 5500
Wire Wire Line
	3100 5600 4050 5600
Text Notes 3300 5800 0    50   ~ 0
Bianco/Verde
Wire Wire Line
	3100 5700 4050 5700
Wire Wire Line
	3100 6000 4050 6000
Wire Wire Line
	3100 6200 4050 6200
Wire Wire Line
	3100 5900 4050 5900
Wire Wire Line
	3100 6100 4050 6100
Wire Wire Line
	3100 5500 1100 5500
Connection ~ 3100 5500
Wire Wire Line
	1400 5600 1400 5700
Connection ~ 3100 5600
Wire Wire Line
	1100 5500 1100 6600
Wire Wire Line
	1400 6350 1400 6600
Connection ~ 1100 6600
Wire Wire Line
	1100 6600 1100 6750
Wire Wire Line
	2600 6200 2600 6300
Wire Wire Line
	2600 6600 2600 6400
Connection ~ 1400 6600
Wire Wire Line
	1100 6600 1400 6600
Connection ~ 3100 6200
Wire Wire Line
	3100 6300 2800 6300
Wire Wire Line
	1950 1000 2100 1000
Wire Wire Line
	1950 1100 2000 1100
Wire Wire Line
	2000 1100 2000 1200
Wire Wire Line
	2000 1200 2100 1200
$Comp
L Device:Buzzer BZ?
U 1 1 5E1B1006
P 1850 5900
F 0 "BZ?" H 1900 5900 50  0001 C CNN
F 1 "Active Buzzer" H 1700 5900 50  0000 C CNN
F 2 "" V 1825 6000 50  0001 C CNN
F 3 "~" V 1825 6000 50  0001 C CNN
	1    1850 5900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1950 6000 2050 6000
Wire Wire Line
	2050 6000 2050 6600
Wire Wire Line
	1400 6600 2050 6600
Connection ~ 2050 6600
Wire Wire Line
	10700 3600 10700 4100
Wire Wire Line
	10500 3600 10500 3900
Wire Wire Line
	10400 3900 10500 3900
Connection ~ 10500 3900
Wire Wire Line
	10500 3900 10500 4400
Wire Wire Line
	10400 4100 10700 4100
Connection ~ 10700 4100
Wire Wire Line
	10700 4100 10700 4400
$Comp
L LnDevice:Alimentatore Al_5Vcc?
U 1 1 5E1C2DB3
P 10100 4000
F 0 "Al_5Vcc?" H 10250 3800 40  0001 R CNN
F 1 "Alimentatore" H 10200 3700 40  0001 R CNN
F 2 "5V Pump" H 10100 3950 30  0000 C CNN
F 3 "" H 10100 3975 60  0000 C CNN
	1    10100 4000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9800 4100 9700 4100
Connection ~ 9700 4100
Wire Wire Line
	9700 4100 9700 4300
Wire Wire Line
	9800 3900 9550 3900
Wire Wire Line
	9550 3900 9550 4850
Wire Wire Line
	9550 5050 9650 5050
Wire Wire Line
	9550 5400 9650 5400
Wire Wire Line
	9550 5300 9850 5300
Wire Wire Line
	9850 5300 9850 5450
$Comp
L LnDevice:Alimentatore Al_5Vcc?
U 1 1 5E20E831
P 2400 1100
F 0 "Al_5Vcc?" H 2550 900 40  0001 R CNN
F 1 "Alimentatore" H 2500 800 40  0001 R CNN
F 2 "5V Arduino" H 2400 1100 30  0000 C CNN
F 3 "" H 2400 1075 60  0000 C CNN
	1    2400 1100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3100 6200 2600 6200
Wire Wire Line
	1400 5600 3100 5600
Wire Wire Line
	1950 5800 3100 5800
Text Notes 1000 7300 0    50   ~ 0
Active Buzzer è messo come emergenza nel caso si dovesse rimuovere Arduino.\nCome pumpState deve arrivare un +5V. \nSuonerebbe in modo continuo ad ogni attacco di pompa.
Connection ~ 3100 5800
Wire Wire Line
	2050 6600 2600 6600
Wire Wire Line
	2800 6300 2800 6750
$Comp
L Isolator:PC817 U?
U 1 1 5E27EA00
P 9150 4200
F 0 "U?" H 9150 4525 50  0001 C CNN
F 1 "PC817" H 9150 4300 43  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 8950 4000 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 9150 4200 50  0001 L CNN
	1    9150 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1900 4650 1900
Wire Wire Line
	4650 1900 4650 1950
Connection ~ 7500 3000
Connection ~ 7500 3100
Connection ~ 7500 3300
Wire Wire Line
	7500 3300 6700 3300
Connection ~ 7500 3400
Wire Wire Line
	7500 3400 8150 3400
Connection ~ 7500 3500
Wire Wire Line
	7500 3500 6700 3500
Connection ~ 7500 3600
Wire Wire Line
	7500 3600 8150 3600
Connection ~ 7500 3700
Wire Wire Line
	9650 3300 7500 3300
Wire Wire Line
	7500 3100 9700 3100
Wire Wire Line
	7500 3000 9500 3000
Wire Wire Line
	7500 3700 8900 3700
Wire Wire Line
	9550 3700 9550 3900
Connection ~ 9550 3900
$Comp
L Device:R R?
U 1 1 5E2AF1D8
P 9050 3900
F 0 "R?" V 9150 3900 50  0001 C CNN
F 1 "1K" V 9050 3900 50  0000 C CNN
F 2 "" V 8980 3900 50  0001 C CNN
F 3 "~" H 9050 3900 50  0001 C CNN
	1    9050 3900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9200 3900 9550 3900
Wire Wire Line
	8900 3900 8750 3900
Wire Wire Line
	8750 3900 8750 4100
Wire Wire Line
	8750 4100 8850 4100
Wire Wire Line
	8850 4300 8750 4300
Wire Wire Line
	8750 4300 8750 4400
$Comp
L power:GNDA #PWR?
U 1 1 5E2BEEF3
P 8750 4400
F 0 "#PWR?" H 8750 4150 50  0001 C CNN
F 1 "GNDA" H 8750 4250 50  0000 C CNN
F 2 "" H 8750 4400 50  0001 C CNN
F 3 "" H 8750 4400 50  0001 C CNN
	1    8750 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E2BEF12
P 9450 4400
F 0 "#PWR?" H 9450 4150 50  0001 C CNN
F 1 "GND" H 9455 4227 50  0000 C CNN
F 2 "" H 9450 4400 50  0001 C CNN
F 3 "" H 9450 4400 50  0001 C CNN
	1    9450 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 4300 9450 4400
Wire Wire Line
	9450 4100 9450 3500
Wire Wire Line
	9450 3500 9550 3500
$Comp
L LnDevice:Jumper3_B SW?
U 1 1 5E2DB7B9
P 9550 3600
F 0 "SW?" V 9504 3776 50  0001 L CNN
F 1 "Ard/NoArd" H 9450 3450 50  0000 L CNN
F 2 "" H 9500 3720 60  0000 C CNN
F 3 "" H 9500 3720 60  0000 C CNN
	1    9550 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	9650 3300 9650 3600
Wire Wire Line
	9650 3600 9600 3600
Text Notes 6850 6250 0    50   ~ 0
Ard/NoArd indica se è presente o meno Arduino. Se è presente mandiamo un LowLevel\nSe non è presente inviamo i +5V che andranno sul buzzer attivo
$Comp
L LnDevice:Edge SW?
U 1 1 5E2F36EA
P 4050 2400
F 0 "SW?" H 3900 2500 70  0001 C CNN
F 1 "Edge" H 4050 2300 70  0001 C CNN
F 2 "" H 4050 2400 60  0000 C CNN
F 3 "" H 4050 2400 60  0000 C CNN
	1    4050 2400
	1    0    0    -1  
$EndComp
$Comp
L LnDevice:Edge SW?
U 1 1 5E2F8DFD
P 4400 2500
F 0 "SW?" H 4250 2600 70  0001 C CNN
F 1 "Edge" H 4400 2400 70  0001 C CNN
F 2 "" H 4400 2500 60  0000 C CNN
F 3 "" H 4400 2500 60  0000 C CNN
	1    4400 2500
	1    0    0    -1  
$EndComp
$Comp
L LnDevice:Edge SW?
U 1 1 5E2F8E17
P 3900 2600
F 0 "SW?" H 3750 2700 70  0001 C CNN
F 1 "Edge" H 3900 2500 70  0001 C CNN
F 2 "" H 3900 2600 60  0000 C CNN
F 3 "" H 3900 2600 60  0000 C CNN
	1    3900 2600
	1    0    0    -1  
$EndComp
$Comp
L LnDevice:Pulse SW?
U 1 1 5E2F9681
P 9150 1700
F 0 "SW?" H 9000 1800 70  0001 C CNN
F 1 "Pulse" H 9150 1600 70  0001 C CNN
F 2 "" H 9150 1700 60  0000 C CNN
F 3 "" H 9150 1700 60  0000 C CNN
	1    9150 1700
	1    0    0    -1  
$EndComp
Text Label 1700 5600 0    50   ~ 0
pressControlState
Text Label 7700 3000 0    50   ~ 0
GNDA
Wire Wire Line
	10050 1550 10050 1700
Wire Wire Line
	10250 1550 10250 1900
Wire Wire Line
	8900 1700 10050 1700
Wire Wire Line
	9700 1900 10250 1900
Wire Wire Line
	8150 3600 8150 5550
Wire Wire Line
	8150 5550 8850 5550
$Comp
L Connector:Conn_01x03_Female J?
U 1 1 5E36902E
P 2900 3500
F 0 "J?" H 2928 3480 50  0001 L CNN
F 1 "Conn_01x03_Female" H 2927 3435 50  0001 L CNN
F 2 "" H 2900 3500 50  0001 C CNN
F 3 "~" H 2900 3500 50  0001 C CNN
	1    2900 3500
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J?
U 1 1 5E3690AB
P 2850 3500
F 0 "J?" H 2822 3477 50  0001 R CNN
F 1 "Conn_01x03_Male" H 2823 3432 50  0001 R CNN
F 2 "" H 2850 3500 50  0001 C CNN
F 3 "~" H 2850 3500 50  0001 C CNN
	1    2850 3500
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Female J?
U 1 1 5E36919D
P 4900 2500
F 0 "J?" H 4928 2480 50  0001 L CNN
F 1 "Conn_01x05_Female" H 4927 2435 50  0001 L CNN
F 2 "" H 4900 2500 50  0001 C CNN
F 3 "~" H 4900 2500 50  0001 C CNN
	1    4900 2500
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Male J?
U 1 1 5E36920E
P 4850 2500
F 0 "J?" H 4822 2477 50  0001 R CNN
F 1 "Conn_01x05_Male" H 4823 2432 50  0001 R CNN
F 2 "" H 4850 2500 50  0001 C CNN
F 3 "~" H 4850 2500 50  0001 C CNN
	1    4850 2500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9550 4850 9200 4850
Wire Wire Line
	9200 4850 9200 5100
Wire Bus Line
	3400 2400 3400 4500
Wire Bus Line
	6600 2850 6600 4100
Wire Bus Line
	4150 5350 4150 6600
Connection ~ 9550 4850
Wire Wire Line
	9550 4850 9550 5050
$EndSCHEMATC
