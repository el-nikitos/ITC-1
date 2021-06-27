EESchema Schematic File Version 4
LIBS:ITC-1-EXT-CONNECTION-cache
EELAYER 29 0
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
1.MOTOR-GND
Text Label 2000 5500 0    138  ~ 28
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
Text Label 8000 3100 0    138  ~ 28
2.LION-4
Text Label 8000 5300 0    138  ~ 28
LION-2
Text Label 8000 6000 0    138  ~ 28
LION-1
Text Label 8000 4600 0    138  ~ 28
LION-3
Text Label 8000 7000 0    138  ~ 28
1.0V
Text Label 8000 7400 0    138  ~ 28
2.0V
Wire Wire Line
	9500 6600 9500 7000
Wire Wire Line
	9500 7000 9100 7400
Connection ~ 9500 7000
Wire Wire Line
	9500 4600 9500 4500
Wire Wire Line
	9500 4600 9500 4700
Connection ~ 9500 4600
Wire Wire Line
	9500 5200 9500 5300
Wire Wire Line
	9500 5400 9500 5300
Connection ~ 9500 5300
Wire Wire Line
	9500 6100 9500 6000
Connection ~ 9500 6000
Wire Wire Line
	9500 6000 9500 5900
Entry Wire Line
	7600 3100 7500 3200
Entry Wire Line
	7600 4600 7500 4700
Wire Wire Line
	9500 4600 7600 4600
Entry Wire Line
	7600 5300 7500 5200
Wire Wire Line
	9500 5300 7600 5300
Entry Wire Line
	7600 7000 7500 6900
Wire Wire Line
	9500 7000 7600 7000
Entry Wire Line
	7600 6000 7500 5900
Wire Wire Line
	9500 6000 7600 6000
Entry Wire Line
	7600 7400 7500 7300
Wire Wire Line
	9100 7400 7600 7400
Entry Wire Line
	1500 4100 1600 4000
Entry Wire Line
	1500 4600 1600 4500
Entry Wire Line
	1500 5100 1600 5000
Entry Wire Line
	1500 5600 1600 5500
Wire Wire Line
	1600 4000 4000 4000
Wire Wire Line
	1600 4500 4000 4500
Wire Wire Line
	1600 5000 4000 5000
Wire Wire Line
	1600 5500 4000 5500
$Comp
L BIG_schemes:Аккумулятор GB4
U 1 1 60DA177A
P 9500 4000
F 0 "GB4" H 9000 3900 138 0000 L CNB
F 1 "Аккумулятор" H 9475 4050 50  0001 C CNN
F 2 "" H 9500 3750 50  0001 C CNN
F 3 "" H 9500 3750 50  0001 C CNN
	1    9500 4000
	-1   0    0    -1  
$EndComp
$Comp
L BIG_schemes:Аккумулятор GB3
U 1 1 60DA1F82
P 9500 4700
F 0 "GB3" H 9000 4600 138 0000 L CNB
F 1 "Аккумулятор" H 9475 4750 50  0001 C CNN
F 2 "" H 9500 4450 50  0001 C CNN
F 3 "" H 9500 4450 50  0001 C CNN
	1    9500 4700
	-1   0    0    -1  
$EndComp
$Comp
L BIG_schemes:Аккумулятор GB2
U 1 1 60DA2446
P 9500 5400
F 0 "GB2" H 9000 5300 138 0000 L CNB
F 1 "Аккумулятор" H 9475 5450 50  0001 C CNN
F 2 "" H 9500 5150 50  0001 C CNN
F 3 "" H 9500 5150 50  0001 C CNN
	1    9500 5400
	-1   0    0    -1  
$EndComp
$Comp
L BIG_schemes:Аккумулятор GB1
U 1 1 60DA29D4
P 9500 6100
F 0 "GB1" H 9000 6000 138 0000 L CNB
F 1 "Аккумулятор" H 9475 6150 50  0001 C CNN
F 2 "" H 9500 5850 50  0001 C CNN
F 3 "" H 9500 5850 50  0001 C CNN
	1    9500 6100
	-1   0    0    -1  
$EndComp
Entry Wire Line
	7400 4000 7500 4100
Entry Wire Line
	7400 4500 7500 4600
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
	9500 3100 7600 3100
Text Label 8000 2700 0    138  ~ 28
1.LION-4
$Comp
L BIG_schemes:Двигатель_постоянного_тока M1
U 1 1 60DB5C51
P 12500 3800
F 0 "M1" H 12600 3500 138 0000 L CNB
F 1 "Двигатель_постоянного_тока" H 13050 4100 50  0001 C CNN
F 2 "" H 13000 3800 50  0001 C CNN
F 3 "" H 13000 3800 50  0001 C CNN
F 4 "2.722" H 12600 4000 50  0001 C CNN "SYMBOL"
	1    12500 3800
	-1   0    0    1   
$EndComp
Wire Wire Line
	12500 3800 14900 3800
Entry Wire Line
	14900 3800 15000 3700
Text Label 14500 3800 2    138  ~ 28
1.MOTOR-GND
Text Label 14500 4200 2    138  ~ 28
2.MOTOR-GND
Entry Wire Line
	14900 4200 15000 4100
Wire Wire Line
	12500 3800 12900 4200
Wire Wire Line
	12900 4200 14900 4200
Connection ~ 12500 3800
$Comp
L BIG_schemes:Светодиод HL1
U 1 1 60DC89E5
P 11500 3100
F 0 "HL1" H 11400 3500 138 0000 L CNB
F 1 "Светодиод" H 11600 3300 50  0001 C CNN
F 2 "" H 11775 3100 50  0001 C CNN
F 3 "" H 11775 3100 50  0001 C CNN
F 4 "2.730" H 11600 3400 50  0001 C CNN "SYMBOL"
	1    11500 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 3100 9100 2700
Wire Wire Line
	9100 2700 7600 2700
Entry Wire Line
	7600 2700 7500 2800
$Comp
L BIG_schemes:Переключатель K1
U 1 1 60DD6C27
P 9500 3100
F 0 "K1" V 9850 3334 138 0000 L CNB
F 1 "Переключатель" H 9750 3300 50  0001 C CNN
F 2 "" H 9500 3100 50  0001 C CNN
F 3 "" H 9500 3100 50  0001 C CNN
F 4 "2.755" H 9600 3400 50  0001 C CNN "SYMBOL"
	1    9500 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	9500 3800 9500 4000
Connection ~ 9500 3100
Text Label 11000 3800 2    138  ~ 28
PWR
Wire Wire Line
	9500 3100 11500 3100
Text Label 11000 3100 2    138  ~ 28
3.LION-4
Text Notes 8200 10300 0    138  ~ 0
1
Text Notes 7900 10300 0    138  ~ 0
2
Text Notes 8200 10600 0    138  ~ 0
3
Text Notes 7900 10600 0    138  ~ 0
4
Text Notes 8200 10900 0    138  ~ 0
5
Text Notes 7900 10900 0    138  ~ 0
6
Wire Notes Line
	7800 10000 8400 10000
Wire Notes Line
	8400 10000 8400 11000
Wire Notes Line
	8400 11000 7800 11000
Wire Notes Line
	7800 11000 7800 10000
Text Notes 8500 10200 0    50   ~ 0
1 - КРУГЛЫЙ ПОЯСОК
Text Notes 7800 9900 0    138  ~ 0
XS1, XS2 - РОЗЕТКИ BLD-6
Wire Wire Line
	11500 3800 9500 3800
Connection ~ 9500 3800
$Comp
L BIG_schemes:Розетка_BLD-6#N3N4 XS1
U 1 1 60D8BA2D
P 4000 3200
F 0 "XS1" H 4200 3000 138 0000 L CNB
F 1 "Розетка_BLD-6#N3N4" H 4400 3050 50  0001 C CNN
F 2 "" H 4000 3200 50  0001 C CNN
F 3 "" H 4000 3200 50  0001 C CNN
	1    4000 3200
	1    0    0    -1  
$EndComp
Text Label 11000 7000 2    138  ~ 28
3.0V
Text Label 14500 3100 2    138  ~ 28
3.0V
Wire Wire Line
	12200 3100 14900 3100
Entry Wire Line
	14900 3100 15000 3200
Entry Wire Line
	14900 7000 15000 6900
Wire Wire Line
	9500 7000 14900 7000
Wire Bus Line
	7500 2100 15000 2100
Text Label 1800 8500 0    138  ~ 28
+ОТ_ЗАРЯДНОГО_УСТРОЙСТВА
Text Label 9000 8500 2    138  ~ 28
+НА_ПЛАТУ_ЗАРЯДА
$Comp
L BIG_schemes:Диод_кремниевый VD1
U 1 1 60D94C55
P 5800 8500
F 0 "VD1" H 6150 8745 138 0000 C CNB
F 1 "Диод_кремниевый" H 5900 8700 50  0001 C CNN
F 2 "" H 6075 8500 50  0001 C CNN
F 3 "" H 6075 8500 50  0001 C CNN
F 4 "2.730" H 5900 8800 50  0001 C CNN "SYMBOL"
	1    5800 8500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 8500 1800 8500
Wire Wire Line
	6500 8500 9000 8500
Text Label 5500 8000 2    138  ~ 28
CHARGE-SENS
Wire Wire Line
	5800 8500 5800 8000
Wire Wire Line
	5800 8000 3500 8000
Wire Wire Line
	3500 8000 3500 7600
Connection ~ 5800 8500
Entry Wire Line
	3400 7500 3500 7600
Text Notes 7800 9600 0    138  ~ 0
K1, HL1 - КНОПКА И ПОДСВЕТКА КНОПКИ
Text Notes 7800 9300 0    138  ~ 0
M1 -  ЭЛЕКТРОДВИГАТЕЛЬ ПОСТОЯННОГО ТОКА
Text Notes 7800 9000 0    138  ~ 0
ПЛАТА УПРАВЛЕНИЯ ЗАРЯДОМ НЕ ПОКАЗАНА
Wire Bus Line
	1500 7500 7500 7500
Wire Bus Line
	1500 4100 1500 7500
Wire Bus Line
	15000 2100 15000 6900
Wire Bus Line
	7500 2100 7500 7500
$EndSCHEMATC
