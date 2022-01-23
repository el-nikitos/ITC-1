EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A2 23386 16535
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
Text Label 3250 5500 2    138  ~ 0
CHARGE-SENS
Text Label 3250 6100 2    138  ~ 0
1.MOTOR-GND
Text Label 3250 6400 2    138  ~ 0
2.MOTOR-GND
Text Label 7000 5500 2    138  ~ 0
LI-1
Text Label 7000 5800 2    138  ~ 0
LI-2
Text Label 7000 6100 2    138  ~ 0
LI-3
Text Label 7000 6400 2    138  ~ 0
LI-4
Text Label 7000 6700 2    138  ~ 0
1.0V
Text Label 7000 7000 2    138  ~ 0
2.0V
Text Label 8000 9000 0    138  ~ 28
LI-2
Text Label 8000 9700 0    138  ~ 28
LI-1
Text Label 8000 8300 0    138  ~ 28
LI-3
Text Label 8000 10700 0    138  ~ 28
1.0V
Text Label 8000 11100 0    138  ~ 28
2.0V
Wire Wire Line
	12500 10300 12500 10700
Wire Wire Line
	9500 10700 9100 11100
Entry Wire Line
	7600 2500 7500 2600
Entry Wire Line
	7500 8200 7600 8300
Wire Wire Line
	9500 8300 7600 8300
Entry Wire Line
	7600 9000 7500 8900
Wire Wire Line
	9500 9000 7600 9000
Entry Wire Line
	7600 10700 7500 10600
Wire Wire Line
	9500 10700 7600 10700
Entry Wire Line
	7600 9700 7500 9600
Entry Wire Line
	7600 11100 7500 11000
Wire Wire Line
	9100 11100 7600 11100
Entry Wire Line
	1500 5600 1600 5500
Entry Wire Line
	1500 6200 1600 6100
Entry Wire Line
	1500 6500 1600 6400
Wire Wire Line
	1600 5500 3500 5500
Wire Wire Line
	1600 6100 3500 6100
Wire Wire Line
	1600 6400 3500 6400
$Comp
L BIG_schemes:Аккумулятор GB4
U 1 1 60DA177A
P 12500 7700
F 0 "GB4" H 12000 7600 138 0000 L CNB
F 1 "Аккумулятор" H 12475 7750 50  0001 C CNN
F 2 "" H 12500 7450 50  0001 C CNN
F 3 "" H 12500 7450 50  0001 C CNN
	1    12500 7700
	-1   0    0    -1  
$EndComp
$Comp
L BIG_schemes:Аккумулятор GB3
U 1 1 60DA1F82
P 12500 8400
F 0 "GB3" H 12000 8300 138 0000 L CNB
F 1 "Аккумулятор" H 12475 8450 50  0001 C CNN
F 2 "" H 12500 8150 50  0001 C CNN
F 3 "" H 12500 8150 50  0001 C CNN
	1    12500 8400
	-1   0    0    -1  
$EndComp
$Comp
L BIG_schemes:Аккумулятор GB2
U 1 1 60DA2446
P 12500 9100
F 0 "GB2" H 12000 9000 138 0000 L CNB
F 1 "Аккумулятор" H 12475 9150 50  0001 C CNN
F 2 "" H 12500 8850 50  0001 C CNN
F 3 "" H 12500 8850 50  0001 C CNN
	1    12500 9100
	-1   0    0    -1  
$EndComp
$Comp
L BIG_schemes:Аккумулятор GB1
U 1 1 60DA29D4
P 12500 9800
F 0 "GB1" H 12000 9700 138 0000 L CNB
F 1 "Аккумулятор" H 12475 9850 50  0001 C CNN
F 2 "" H 12500 9550 50  0001 C CNN
F 3 "" H 12500 9550 50  0001 C CNN
	1    12500 9800
	-1   0    0    -1  
$EndComp
Entry Wire Line
	7400 5500 7500 5600
Entry Wire Line
	7400 5800 7500 5900
Entry Wire Line
	7500 6200 7400 6100
Entry Wire Line
	7500 6500 7400 6400
Entry Wire Line
	7400 6700 7500 6800
Entry Wire Line
	7400 7000 7500 7100
Wire Wire Line
	9500 2500 7600 2500
$Comp
L BIG_schemes:Двигатель_постоянного_тока M1
U 1 1 60DB5C51
P 16750 2500
F 0 "M1" H 16850 2200 138 0000 L CNB
F 1 "Двигатель_постоянного_тока" H 17300 2800 50  0001 C CNN
F 2 "" H 17250 2500 50  0001 C CNN
F 3 "" H 17250 2500 50  0001 C CNN
F 4 "2.722" H 16850 2700 50  0001 C CNN "SYMBOL"
	1    16750 2500
	-1   0    0    1   
$EndComp
Entry Wire Line
	20900 2500 21000 2400
Text Label 20550 2500 2    138  ~ 28
1.MOTOR-GND
Text Label 20550 2900 2    138  ~ 28
2.MOTOR-GND
Entry Wire Line
	20900 2900 21000 2800
Wire Wire Line
	18550 2500 18950 2900
$Comp
L BIG_schemes:Светодиод HL1
U 1 1 60DC89E5
P 13500 4500
F 0 "HL1" V 13650 4750 138 0000 L CNB
F 1 "Светодиод" H 13600 4700 50  0001 C CNN
F 2 "" H 13775 4500 50  0001 C CNN
F 3 "" H 13775 4500 50  0001 C CNN
F 4 "2.730" H 13600 4800 50  0001 C CNN "SYMBOL"
	1    13500 4500
	0    1    1    0   
$EndComp
$Comp
L BIG_schemes:Переключатель K1
U 1 1 60DD6C27
P 12500 4500
F 0 "K1" V 12650 4750 138 0000 L CNB
F 1 "Переключатель" H 12750 4700 50  0001 C CNN
F 2 "" H 12500 4500 50  0001 C CNN
F 3 "" H 12500 4500 50  0001 C CNN
F 4 "2.755" H 12600 4800 50  0001 C CNN "SYMBOL"
	1    12500 4500
	0    1    1    0   
$EndComp
Text Notes 9750 14300 0    138  ~ 0
1
Text Notes 9450 14300 0    138  ~ 0
2
Text Notes 9750 14600 0    138  ~ 0
3
Text Notes 9450 14600 0    138  ~ 0
4
Text Notes 9750 14900 0    138  ~ 0
5
Text Notes 9450 14900 0    138  ~ 0
6
Wire Notes Line
	9350 14000 9950 14000
Wire Notes Line
	9950 14000 9950 15000
Wire Notes Line
	9950 15000 9350 15000
Wire Notes Line
	9350 15000 9350 14000
Text Notes 10050 14200 0    50   ~ 0
1 - КРУГЛЫЙ ПОЯСОК
Text Notes 9350 13900 0    138  ~ 0
X5:
Text Label 13250 10700 2    138  ~ 28
3.0V
Text Label 1000 15100 0    138  ~ 28
+ОТ_ЗАРЯДНОГО_УСТРОЙСТВА
Text Label 8200 15100 2    138  ~ 28
+НА_ПЛАТУ_ЗАРЯДА
$Comp
L BIG_schemes:Диод_кремниевый VD1
U 1 1 60D94C55
P 5000 15100
F 0 "VD1" H 5350 15345 138 0000 C CNB
F 1 "Диод_кремниевый" H 5100 15300 50  0001 C CNN
F 2 "" H 5275 15100 50  0001 C CNN
F 3 "" H 5275 15100 50  0001 C CNN
F 4 "2.730" H 5100 15400 50  0001 C CNN "SYMBOL"
	1    5000 15100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 15100 1000 15100
Wire Wire Line
	5700 15100 8200 15100
Text Label 4700 14600 2    138  ~ 28
CHARGE-SENS
Wire Wire Line
	5000 15100 5000 14600
Wire Wire Line
	5000 14600 2700 14600
Wire Wire Line
	2700 14600 2700 14200
Connection ~ 5000 15100
Entry Wire Line
	2600 14100 2700 14200
Text Notes 9350 13600 0    138  ~ 0
K1, HL1 - КНОПКА И ПОДСВЕТКА КНОПКИ
Text Notes 9350 13300 0    138  ~ 0
M1 -  ЭЛЕКТРОДВИГАТЕЛЬ ПОСТОЯННОГО ТОКА
Text Notes 9350 13000 0    138  ~ 0
ПЛАТА УПРАВЛЕНИЯ ЗАРЯДОМ НЕ ПОКАЗАНА
$Comp
L BIG_schemes:Вилка_ножевая XP?
U 1 1 61144A5A
P 10000 2500
F 0 "XP?" V 9650 1800 138 0000 L CNB
F 1 "Вилка_ножевая" H 10400 2350 50  0001 C CNN
F 2 "" H 10000 2500 50  0001 C CNN
F 3 "" H 10000 2500 50  0001 C CNN
	1    10000 2500
	0    1    1    0   
$EndComp
$Comp
L BIG_schemes:Розетка_ножевая XS?
U 1 1 6114576C
P 9800 2500
F 0 "XS?" V 10125 2400 138 0000 R CNB
F 1 "Розетка_ножевая" H 10200 2350 50  0001 C CNN
F 2 "" H 9800 2500 50  0001 C CNN
F 3 "" H 9800 2500 50  0001 C CNN
	1    9800 2500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	12500 8200 12500 8300
Wire Wire Line
	12500 8900 12500 9000
Wire Wire Line
	12500 9600 12500 9700
$Comp
L BIG_schemes:Вилка_ножевая XP?
U 1 1 6117A4C8
P 14300 2500
F 0 "XP?" V 13950 1800 138 0000 L CNB
F 1 "Вилка_ножевая" H 14700 2350 50  0001 C CNN
F 2 "" H 14300 2500 50  0001 C CNN
F 3 "" H 14300 2500 50  0001 C CNN
	1    14300 2500
	0    -1   1    0   
$EndComp
$Comp
L BIG_schemes:Розетка_ножевая XS?
U 1 1 6117A4D2
P 14500 2500
F 0 "XS?" V 14825 2400 138 0000 R CNB
F 1 "Розетка_ножевая" H 14900 2350 50  0001 C CNN
F 2 "" H 14500 2500 50  0001 C CNN
F 3 "" H 14500 2500 50  0001 C CNN
	1    14500 2500
	0    1    -1   0   
$EndComp
$Comp
L BIG_schemes:Вилка_ножевая XP?
U 1 1 6117D663
P 10000 8300
F 0 "XP?" V 9650 7600 138 0000 L CNB
F 1 "Вилка_ножевая" H 10400 8150 50  0001 C CNN
F 2 "" H 10000 8300 50  0001 C CNN
F 3 "" H 10000 8300 50  0001 C CNN
	1    10000 8300
	0    1    1    0   
$EndComp
$Comp
L BIG_schemes:Розетка_ножевая XS?
U 1 1 6117D66D
P 9800 8300
F 0 "XS?" V 10125 8200 138 0000 R CNB
F 1 "Розетка_ножевая" H 10200 8150 50  0001 C CNN
F 2 "" H 9800 8300 50  0001 C CNN
F 3 "" H 9800 8300 50  0001 C CNN
	1    9800 8300
	0    -1   -1   0   
$EndComp
$Comp
L BIG_schemes:Вилка_ножевая XP?
U 1 1 6117EF19
P 10000 9000
F 0 "XP?" V 9650 8300 138 0000 L CNB
F 1 "Вилка_ножевая" H 10400 8850 50  0001 C CNN
F 2 "" H 10000 9000 50  0001 C CNN
F 3 "" H 10000 9000 50  0001 C CNN
	1    10000 9000
	0    1    1    0   
$EndComp
$Comp
L BIG_schemes:Розетка_ножевая XS?
U 1 1 6117EF23
P 9800 9000
F 0 "XS?" V 10125 8900 138 0000 R CNB
F 1 "Розетка_ножевая" H 10200 8850 50  0001 C CNN
F 2 "" H 9800 9000 50  0001 C CNN
F 3 "" H 9800 9000 50  0001 C CNN
	1    9800 9000
	0    -1   -1   0   
$EndComp
$Comp
L BIG_schemes:Вилка_ножевая XP?
U 1 1 61180287
P 10000 9700
F 0 "XP?" V 9650 9000 138 0000 L CNB
F 1 "Вилка_ножевая" H 10400 9550 50  0001 C CNN
F 2 "" H 10000 9700 50  0001 C CNN
F 3 "" H 10000 9700 50  0001 C CNN
	1    10000 9700
	0    1    1    0   
$EndComp
$Comp
L BIG_schemes:Розетка_ножевая XS?
U 1 1 61180291
P 9800 9700
F 0 "XS?" V 10125 9600 138 0000 R CNB
F 1 "Розетка_ножевая" H 10200 9550 50  0001 C CNN
F 2 "" H 9800 9700 50  0001 C CNN
F 3 "" H 9800 9700 50  0001 C CNN
	1    9800 9700
	0    -1   -1   0   
$EndComp
$Comp
L BIG_schemes:Вилка_ножевая XP?
U 1 1 61181795
P 10000 10700
F 0 "XP?" V 9650 10000 138 0000 L CNB
F 1 "Вилка_ножевая" H 10400 10550 50  0001 C CNN
F 2 "" H 10000 10700 50  0001 C CNN
F 3 "" H 10000 10700 50  0001 C CNN
	1    10000 10700
	0    1    1    0   
$EndComp
$Comp
L BIG_schemes:Розетка_ножевая XS?
U 1 1 6118179F
P 9800 10700
F 0 "XS?" V 10125 10600 138 0000 R CNB
F 1 "Розетка_ножевая" H 10200 10550 50  0001 C CNN
F 2 "" H 9800 10700 50  0001 C CNN
F 3 "" H 9800 10700 50  0001 C CNN
	1    9800 10700
	0    -1   -1   0   
$EndComp
Connection ~ 9500 10700
$Comp
L BIG_schemes:Вилка_ножевая XP?
U 1 1 61187510
P 12500 6400
F 0 "XP?" H 11900 5850 138 0000 L CNB
F 1 "Вилка_ножевая" H 12900 6250 50  0001 C CNN
F 2 "" H 12500 6400 50  0001 C CNN
F 3 "" H 12500 6400 50  0001 C CNN
	1    12500 6400
	-1   0    0    1   
$EndComp
$Comp
L BIG_schemes:Розетка_ножевая XS?
U 1 1 6118751A
P 12500 6200
F 0 "XS?" H 13100 5950 138 0000 R CNB
F 1 "Розетка_ножевая" H 12900 6050 50  0001 C CNN
F 2 "" H 12500 6200 50  0001 C CNN
F 3 "" H 12500 6200 50  0001 C CNN
	1    12500 6200
	1    0    0    -1  
$EndComp
Connection ~ 12500 6700
$Comp
L BIG_schemes:Вилка_ножевая XP?
U 1 1 61193112
P 18250 2500
F 0 "XP?" V 17900 1800 138 0000 L CNB
F 1 "Вилка_ножевая" H 18650 2350 50  0001 C CNN
F 2 "" H 18250 2500 50  0001 C CNN
F 3 "" H 18250 2500 50  0001 C CNN
	1    18250 2500
	0    1    1    0   
$EndComp
$Comp
L BIG_schemes:Розетка_ножевая XS?
U 1 1 6119311C
P 18050 2500
F 0 "XS?" V 18375 2400 138 0000 R CNB
F 1 "Розетка_ножевая" H 18450 2350 50  0001 C CNN
F 2 "" H 18050 2500 50  0001 C CNN
F 3 "" H 18050 2500 50  0001 C CNN
	1    18050 2500
	0    -1   -1   0   
$EndComp
Text Label 17000 2500 0    138  ~ 28
M1-
Text Label 15000 2500 0    138  ~ 28
M1+
Wire Wire Line
	17750 2500 16750 2500
Wire Wire Line
	14800 2500 15750 2500
Wire Wire Line
	20900 2500 18550 2500
Connection ~ 18550 2500
Wire Wire Line
	18950 2900 20900 2900
Wire Wire Line
	10300 8300 10550 8550
Wire Wire Line
	10550 8550 10900 8550
Wire Wire Line
	10300 9000 10550 9250
Wire Wire Line
	10550 9250 10900 9250
Wire Wire Line
	10300 9700 10550 9950
Wire Wire Line
	10550 9950 10900 9950
Wire Wire Line
	10300 10700 10550 10950
Wire Wire Line
	10550 10950 10900 10950
Entry Wire Line
	10900 8550 11000 8650
Entry Wire Line
	10900 9250 11000 9350
Entry Wire Line
	10900 9950 11000 10050
Entry Wire Line
	10900 10950 11000 11050
Text Label 10600 10950 0    138  ~ 28
B-
Text Label 10600 9250 0    138  ~ 28
B1
Text Label 10600 8550 0    138  ~ 28
B2
Text Label 10600 9950 0    138  ~ 28
B
Text Label 11700 6950 0    138  ~ 28
B+
Connection ~ 12500 8300
Wire Wire Line
	12500 8300 12500 8400
Connection ~ 12500 9000
Wire Wire Line
	12500 9000 12500 9100
Connection ~ 12500 9700
Wire Wire Line
	12500 9700 12500 9800
Wire Wire Line
	10300 8300 12500 8300
Wire Wire Line
	10300 9000 12500 9000
Wire Wire Line
	10300 9700 12500 9700
Wire Wire Line
	10300 10700 12500 10700
Wire Wire Line
	12500 6700 12250 6950
Wire Wire Line
	12250 6950 11100 6950
Entry Wire Line
	11000 7050 11100 6950
Connection ~ 10300 8300
Connection ~ 10300 9000
Connection ~ 10300 9700
Wire Wire Line
	9500 9700 7600 9700
Connection ~ 10300 10700
Text Label 11250 9700 0    138  ~ 28
B.LI-1
Text Label 11250 9000 0    138  ~ 28
B.LI-2
Text Label 11250 8300 0    138  ~ 28
B.LI-3
Wire Wire Line
	12500 6700 12500 7700
Text Label 12500 7450 0    138  ~ 28
B1.LI-4
Wire Wire Line
	6000 5500 7400 5500
Wire Wire Line
	6000 5800 7400 5800
Wire Wire Line
	6000 6100 7400 6100
Wire Wire Line
	6000 6400 7400 6400
Wire Wire Line
	6000 6700 7400 6700
Wire Wire Line
	6000 7000 7400 7000
$Comp
L BIG_schemes:Диод_кремниевый VD?
U 1 1 611FBFBD
P 16700 3300
F 0 "VD?" H 17050 3050 138 0000 C CNB
F 1 "Диод_кремниевый" H 16800 3500 50  0001 C CNN
F 2 "" H 16975 3300 50  0001 C CNN
F 3 "" H 16975 3300 50  0001 C CNN
F 4 "2.730" H 16800 3600 50  0001 C CNN "SYMBOL"
	1    16700 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	16700 3300 16950 3300
Wire Wire Line
	16950 3300 17750 2500
Connection ~ 17750 2500
Wire Wire Line
	16000 3300 15600 3300
Wire Wire Line
	15600 3300 14800 2500
Connection ~ 14800 2500
Wire Wire Line
	12950 2500 12500 2950
Text Label 8000 2500 0    138  ~ 28
LI-4
Wire Wire Line
	10300 2500 12050 2500
Wire Wire Line
	12050 2500 12500 2950
Wire Bus Line
	21000 1750 7500 1750
Wire Notes Line
	12250 4200 14250 4200
Wire Notes Line
	14250 4200 14250 5450
Wire Notes Line
	14250 5450 12250 5450
Wire Notes Line
	12250 5450 12250 4200
Wire Wire Line
	12500 4000 13500 4000
$Comp
L BIG_schemes:Вилка_ножевая XP?
U 1 1 6117E2D2
P 13500 6400
F 0 "XP?" H 12900 5850 138 0000 L CNB
F 1 "Вилка_ножевая" H 13900 6250 50  0001 C CNN
F 2 "" H 13500 6400 50  0001 C CNN
F 3 "" H 13500 6400 50  0001 C CNN
	1    13500 6400
	-1   0    0    1   
$EndComp
$Comp
L BIG_schemes:Розетка_ножевая XS?
U 1 1 6117E2DC
P 13500 6200
F 0 "XS?" H 14100 5950 138 0000 R CNB
F 1 "Розетка_ножевая" H 13900 6050 50  0001 C CNN
F 2 "" H 13500 6200 50  0001 C CNN
F 3 "" H 13500 6200 50  0001 C CNN
	1    13500 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	12500 10700 13500 10700
Wire Wire Line
	13500 10700 13500 6700
Connection ~ 12500 10700
Wire Wire Line
	13500 4000 13500 4500
Wire Wire Line
	12500 4500 12500 4000
Wire Wire Line
	12500 5200 12500 5900
Wire Wire Line
	13500 5200 13500 5900
Wire Bus Line
	1500 11500 7500 11500
$Comp
L BIG_schemes:Вилка_ножевая XP?
U 1 1 611B1B49
P 12500 3450
F 0 "XP?" H 11900 2900 138 0000 L CNB
F 1 "Вилка_ножевая" H 12900 3300 50  0001 C CNN
F 2 "" H 12500 3450 50  0001 C CNN
F 3 "" H 12500 3450 50  0001 C CNN
	1    12500 3450
	-1   0    0    1   
$EndComp
$Comp
L BIG_schemes:Розетка_ножевая XS?
U 1 1 611B1B53
P 12500 3250
F 0 "XS?" H 13100 3000 138 0000 R CNB
F 1 "Розетка_ножевая" H 12900 3100 50  0001 C CNN
F 2 "" H 12500 3250 50  0001 C CNN
F 3 "" H 12500 3250 50  0001 C CNN
	1    12500 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	12500 3750 12500 4000
Connection ~ 12500 4000
Wire Wire Line
	12950 2500 14000 2500
Text Label 12950 2500 0    138  ~ 28
B2.LI-4
Connection ~ 12500 2950
Text Notes 10600 12000 0    138  ~ 0
НА BMS
$Comp
L BIG_schemes:ITC-1-1N8&1 A?
U 1 1 61EE9F7A
P 3500 5500
F 0 "A?" H 5450 6400 138 0000 L CNN
F 1 "ITC-1-1N8&1" H 4800 3600 50  0001 C CNB
F 2 "" H -550 8400 50  0001 C CNN
F 3 "" H -550 8400 50  0001 C CNN
	1    3500 5500
	1    0    0    -1  
$EndComp
Text Notes 11900 14300 0    138  ~ 0
1
Text Notes 11600 14300 0    138  ~ 0
2
Text Notes 11900 14600 0    138  ~ 0
3
Text Notes 11600 14600 0    138  ~ 0
4
Wire Notes Line
	11500 14000 12100 14000
Wire Notes Line
	12100 14000 12100 14700
Wire Notes Line
	12100 14700 11500 14700
Wire Notes Line
	11500 14700 11500 14000
Text Notes 12200 14200 0    50   ~ 0
1 - КРУГЛЫЙ ПОЯСОК
Text Notes 11500 13900 0    138  ~ 0
X6:
Wire Bus Line
	21000 1750 21000 2800
Wire Bus Line
	1500 5600 1500 11500
Wire Bus Line
	11000 7050 11000 11700
Wire Bus Line
	7500 1750 7500 11500
$EndSCHEMATC
