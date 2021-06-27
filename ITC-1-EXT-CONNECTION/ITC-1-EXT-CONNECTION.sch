EESchema Schematic File Version 4
LIBS:ITC-1-EXT-CONNECTION-cache
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L BIG_schemes:ITC-1-0N6 A1
U 1 1 60D86B1E
P 4000 2500
F 0 "A1" H 5200 3625 138 0000 L CNB
F 1 "ITC-1-0N6" H 4950 2300 138 0001 C CNB
F 2 "" H 4000 2500 50  0001 C CNN
F 3 "" H 4000 2500 50  0001 C CNN
	1    4000 2500
	1    0    0    -1  
$EndComp
$Comp
L BIG_schemes:Розетка_BLD-6#0 XS2
U 1 1 60D8B163
P 5000 3200
F 0 "XS2" H 5200 3000 138 0000 L CNB
F 1 "Розетка_BLD-6#0" H 5400 3050 50  0001 C CNN
F 2 "" H 5000 3200 50  0001 C CNN
F 3 "" H 5000 3200 50  0001 C CNN
	1    5000 3200
	1    0    0    -1  
$EndComp
Text Label 2000 4000 0    138  ~ 28
1.LION-4
Text Label 2000 4500 0    138  ~ 28
CHARGE-SENS
Text Label 2000 5000 0    138  ~ 28
BUTTON-LED
Text Label 2000 5500 0    138  ~ 28
1.MOTOR-GND
Text Label 2000 6000 0    138  ~ 28
2.MOTOR-GND
Text Label 7000 4000 2    138  ~ 28
LION-1
Text Label 7000 4500 2    138  ~ 28
LION-2
Text Label 7000 5000 2    138  ~ 28
LION-3
Text Label 7000 5500 2    138  ~ 28
2.LION-4
Text Label 7000 6000 2    138  ~ 28
1.0V
Text Label 7000 6500 2    138  ~ 28
2.0V
Text Label 8000 3000 0    138  ~ 28
2.LION-4
Text Label 8000 5200 0    138  ~ 28
LION-2
Text Label 8000 5900 0    138  ~ 28
LION-1
Text Label 8000 4500 0    138  ~ 28
LION-3
Text Label 8000 6900 0    138  ~ 28
1.0V
Text Label 8000 7300 0    138  ~ 28
2.0V
Wire Wire Line
	9500 6500 9500 6900
Wire Wire Line
	9500 6900 9100 7300
Connection ~ 9500 6900
Wire Wire Line
	9500 4500 9500 4400
Wire Wire Line
	9500 4500 9500 4600
Connection ~ 9500 4500
Wire Wire Line
	9500 5100 9500 5200
Wire Wire Line
	9500 5300 9500 5200
Connection ~ 9500 5200
Wire Wire Line
	9500 6000 9500 5900
Connection ~ 9500 5900
Wire Wire Line
	9500 5900 9500 5800
Entry Wire Line
	7600 3000 7500 3100
Entry Wire Line
	7600 4500 7500 4600
Wire Wire Line
	9500 4500 7600 4500
Entry Wire Line
	7600 5200 7500 5300
Wire Wire Line
	9500 5200 7600 5200
Entry Wire Line
	7600 6900 7500 7000
Wire Wire Line
	9500 6900 7600 6900
Entry Wire Line
	7600 5900 7500 5800
Wire Wire Line
	9500 5900 7600 5900
Entry Wire Line
	7600 7300 7500 7400
Wire Wire Line
	9100 7300 7600 7300
Entry Wire Line
	1500 4100 1600 4000
Entry Wire Line
	1500 4600 1600 4500
Entry Wire Line
	1500 5100 1600 5000
Entry Wire Line
	1500 5600 1600 5500
Entry Wire Line
	1500 6100 1600 6000
Wire Wire Line
	1600 4000 4000 4000
Wire Wire Line
	1600 4500 4000 4500
Wire Wire Line
	1600 5000 4000 5000
Wire Wire Line
	1600 5500 4000 5500
Wire Wire Line
	1600 6000 4000 6000
$Comp
L BIG_schemes:Розетка_BLD-6#N4 XS1
U 1 1 60D9DE5A
P 4000 3200
F 0 "XS1" H 4200 3000 138 0000 L CNB
F 1 "Розетка_BLD-6#N4" H 4400 3050 50  0001 C CNN
F 2 "" H 4000 3200 50  0001 C CNN
F 3 "" H 4000 3200 50  0001 C CNN
	1    4000 3200
	1    0    0    -1  
$EndComp
$Comp
L BIG_schemes:Аккумулятор GB1
U 1 1 60DA177A
P 9500 3900
F 0 "GB1" H 9000 3800 138 0000 L CNB
F 1 "Аккумулятор" H 9475 3950 50  0001 C CNN
F 2 "" H 9500 3650 50  0001 C CNN
F 3 "" H 9500 3650 50  0001 C CNN
	1    9500 3900
	-1   0    0    -1  
$EndComp
$Comp
L BIG_schemes:Аккумулятор GB2
U 1 1 60DA1F82
P 9500 4600
F 0 "GB2" H 9000 4500 138 0000 L CNB
F 1 "Аккумулятор" H 9475 4650 50  0001 C CNN
F 2 "" H 9500 4350 50  0001 C CNN
F 3 "" H 9500 4350 50  0001 C CNN
	1    9500 4600
	-1   0    0    -1  
$EndComp
$Comp
L BIG_schemes:Аккумулятор GB3
U 1 1 60DA2446
P 9500 5300
F 0 "GB3" H 9000 5200 138 0000 L CNB
F 1 "Аккумулятор" H 9475 5350 50  0001 C CNN
F 2 "" H 9500 5050 50  0001 C CNN
F 3 "" H 9500 5050 50  0001 C CNN
	1    9500 5300
	-1   0    0    -1  
$EndComp
$Comp
L BIG_schemes:Аккумулятор GB4
U 1 1 60DA29D4
P 9500 6000
F 0 "GB4" H 9000 5900 138 0000 L CNB
F 1 "Аккумулятор" H 9475 6050 50  0001 C CNN
F 2 "" H 9500 5750 50  0001 C CNN
F 3 "" H 9500 5750 50  0001 C CNN
	1    9500 6000
	-1   0    0    -1  
$EndComp
Entry Wire Line
	7400 4000 7500 4100
Entry Wire Line
	7400 4500 7500 4400
Entry Wire Line
	7400 5000 7500 4900
Entry Wire Line
	7400 5500 7500 5400
Entry Wire Line
	7400 6000 7500 6100
Entry Wire Line
	7400 6500 7500 6600
Wire Wire Line
	5000 6500 7400 6500
Wire Wire Line
	5000 6000 7400 6000
Wire Wire Line
	5000 5500 7400 5500
Wire Wire Line
	5000 5000 7400 5000
Wire Wire Line
	5000 4500 7400 4500
Wire Wire Line
	5000 4000 7400 4000
Wire Wire Line
	9500 3000 7600 3000
Text Label 8000 2600 0    138  ~ 28
1.LION-4
$Comp
L BIG_schemes:Двигатель_постоянного_тока M?
U 1 1 60DB5C51
P 12000 4500
F 0 "M?" V 12200 4700 138 0000 L CNB
F 1 "Двигатель_постоянного_тока" H 12550 4800 50  0001 C CNN
F 2 "" H 12500 4500 50  0001 C CNN
F 3 "" H 12500 4500 50  0001 C CNN
F 4 "2.722" H 12100 4700 50  0001 C CNN "SYMBOL"
	1    12000 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	12000 5500 14400 5500
Entry Wire Line
	14400 5500 14500 5600
Text Label 14000 5500 2    138  ~ 28
1.MOTOR-GND
Text Label 14000 5900 2    138  ~ 28
2.MOTOR-GND
Entry Wire Line
	14400 5900 14500 6000
Wire Wire Line
	12000 5500 12400 5900
Wire Wire Line
	12400 5900 14400 5900
Connection ~ 12000 5500
$Comp
L BIG_schemes:Светодиод HL?
U 1 1 60DC89E5
P 11300 3000
F 0 "HL?" H 11200 3400 138 0000 L CNB
F 1 "Светодиод" H 11400 3200 50  0001 C CNN
F 2 "" H 11575 3000 50  0001 C CNN
F 3 "" H 11575 3000 50  0001 C CNN
F 4 "2.730" H 11400 3300 50  0001 C CNN "SYMBOL"
	1    11300 3000
	1    0    0    -1  
$EndComp
Text Label 14000 3000 2    138  ~ 28
BUTTON-LED
Wire Wire Line
	9500 3000 9100 2600
Wire Wire Line
	9100 2600 7600 2600
Entry Wire Line
	7600 2600 7500 2700
Wire Bus Line
	7500 7500 1500 7500
$Comp
L BIG_schemes:Переключатель K?
U 1 1 60DD6C27
P 9500 3000
F 0 "K?" V 9850 3234 138 0000 L CNB
F 1 "Переключатель" H 9750 3200 50  0001 C CNN
F 2 "" H 9500 3000 50  0001 C CNN
F 3 "" H 9500 3000 50  0001 C CNN
F 4 "2.755" H 9600 3300 50  0001 C CNN "SYMBOL"
	1    9500 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	9500 3700 9500 3900
Connection ~ 9500 3000
Text Label 11000 3700 2    138  ~ 28
1.PWR
Wire Wire Line
	9500 3700 12000 3700
Connection ~ 9500 3700
Wire Wire Line
	12000 3000 14400 3000
Entry Wire Line
	14400 3000 14500 3100
Wire Wire Line
	9500 3000 11300 3000
Text Label 11000 3000 2    138  ~ 28
3.LION-4
Wire Bus Line
	14500 3100 14500 7500
Wire Bus Line
	1500 4100 1500 7500
Wire Bus Line
	7500 2700 7500 7500
$EndSCHEMATC
