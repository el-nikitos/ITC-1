EESchema Schematic File Version 4
LIBS:ITC-1-cache
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
$Comp
L modules:модуль_esp32_wroom_32_SMD A1
U 1 1 609973EE
P 2200 2000
F 0 "A1" H 3725 2265 50  0000 C CNN
F 1 "модуль_esp32_wroom_32_SMD" H 3725 2174 50  0000 C CNN
F 2 "N_A:ESP32_WROOM32_pnp" H 2200 2000 50  0001 C CNN
F 3 "" H 2200 2000 50  0001 C CNN
	1    2200 2000
	1    0    0    -1  
$EndComp
$Comp
L elements:кнопка K1
U 1 1 609A8819
P 8250 2500
F 0 "K1" H 8050 2700 60  0000 C CNN
F 1 "кнопка" H 8050 2450 60  0000 C CNN
F 2 "N_X:Кнопка_FSMSM" H 8125 2550 60  0001 C CNN
F 3 "" H 8125 2550 60  0001 C CNN
	1    8250 2500
	-1   0    0    -1  
$EndComp
$Comp
L elements:кнопка K2
U 1 1 609AB163
P 8250 3000
F 0 "K2" H 8050 3200 60  0000 C CNN
F 1 "кнопка" H 8050 2950 60  0000 C CNN
F 2 "N_X:Кнопка_FSMSM" H 8125 3050 60  0001 C CNN
F 3 "" H 8125 3050 60  0001 C CNN
	1    8250 3000
	-1   0    0    -1  
$EndComp
$Comp
L elements:крепеж X1
U 1 1 609DD4ED
P 2500 1000
F 0 "X1" H 2628 1046 50  0000 L CNN
F 1 "крепеж" H 2628 955 50  0000 L CNN
F 2 "N_X:Отверстие_М3" H 2500 1000 50  0001 C CNN
F 3 "" H 2500 1000 50  0001 C CNN
	1    2500 1000
	1    0    0    -1  
$EndComp
$Comp
L elements:крепеж X2
U 1 1 609DE4AB
P 3000 1000
F 0 "X2" H 3128 1046 50  0000 L CNN
F 1 "крепеж" H 3128 955 50  0000 L CNN
F 2 "N_X:Отверстие_М3" H 3000 1000 50  0001 C CNN
F 3 "" H 3000 1000 50  0001 C CNN
	1    3000 1000
	1    0    0    -1  
$EndComp
Text Label 1500 3350 0    50   ~ 0
LED_1
NoConn ~ 2000 3950
NoConn ~ 3250 4250
NoConn ~ 3400 4250
Text Label 6250 2450 2    50   ~ 0
BOOT_UART_TX
Wire Wire Line
	5450 2450 6400 2450
Text Label 6250 2600 2    50   ~ 0
BOOT_UART_RX
Wire Wire Line
	5450 2600 6400 2600
Entry Wire Line
	6400 2450 6500 2550
Entry Wire Line
	6400 2600 6500 2700
Text Label 6250 3950 2    50   ~ 0
BOOT_SEL
Wire Wire Line
	5450 3950 6400 3950
Entry Wire Line
	6400 3950 6500 4050
Entry Wire Line
	1250 3100 1350 3200
Wire Wire Line
	1350 3200 2000 3200
Text Label 1500 3500 0    50   ~ 0
LED_2
Entry Wire Line
	1250 3250 1350 3350
Wire Wire Line
	1350 3350 2000 3350
Text Label 1500 3650 0    50   ~ 0
LED_3
Entry Wire Line
	1250 3400 1350 3500
Wire Wire Line
	1350 3500 2000 3500
Text Label 1500 3800 0    50   ~ 0
LED_4
Entry Wire Line
	1250 3550 1350 3650
Wire Wire Line
	1350 3650 2000 3650
Text Label 6225 4650 2    50   ~ 0
LED_5
Entry Wire Line
	1250 3700 1350 3800
Wire Wire Line
	1350 3800 2000 3800
Text Label 6250 3800 2    50   ~ 0
LED_6
Entry Wire Line
	6500 2950 6400 3050
Text Label 6250 3650 2    50   ~ 0
LED_7
Entry Wire Line
	6500 3100 6400 3200
Text Label 6250 3500 2    50   ~ 0
LED_8
Entry Wire Line
	6500 3250 6400 3350
Wire Wire Line
	3100 4650 1350 4650
Wire Wire Line
	3100 4250 3100 4650
Entry Wire Line
	1250 4550 1350 4650
Wire Wire Line
	1500 4500 2950 4500
Wire Wire Line
	2950 4500 2950 4250
Text Label 6250 3350 2    50   ~ 0
LED_9
Wire Wire Line
	4450 4500 4450 4250
Wire Wire Line
	4450 4500 6250 4500
Text Label 6250 4500 2    50   ~ 0
GND
Wire Wire Line
	4300 4250 4300 4650
Wire Wire Line
	4300 4650 6400 4650
Wire Wire Line
	4150 4250 4150 4800
Wire Wire Line
	4150 4800 6400 4800
Entry Wire Line
	6400 4650 6500 4750
Entry Wire Line
	6400 4800 6500 4900
Text Label 1500 4650 0    50   ~ 0
LED_RED
Text Label 6250 4800 2    50   ~ 0
LED_GREEN
Text Label 1500 2000 0    50   ~ 0
GND
Wire Wire Line
	1500 2000 2000 2000
Text Label 1500 2150 0    50   ~ 0
3V3
Wire Wire Line
	1500 2150 2000 2150
Text Label 6250 2000 2    50   ~ 0
GND
Wire Wire Line
	5450 2000 6250 2000
Text Label 1500 4500 0    50   ~ 0
GND
$Comp
L elements:Вилка_PLD6_ПРОГ_STM XP1
U 1 1 60A83433
P 4700 6250
F 0 "XP1" H 4700 6600 60  0000 C CNN
F 1 "Вилка_PLD6_ПРОГ_STM" H 4750 5900 60  0000 C CNN
F 2 "N_X:Вилка_PLLD6_угловая_вертикальная" H 4700 6250 60  0001 C CNN
F 3 "" H 4700 6250 60  0001 C CNN
	1    4700 6250
	1    0    0    -1  
$EndComp
Text Label 1500 2300 0    50   ~ 0
EN_RESET
Entry Wire Line
	1250 2200 1350 2300
Wire Wire Line
	1350 2300 2000 2300
Text Label 1500 6500 0    50   ~ 0
EN_RESET
Text Label 5500 6100 2    50   ~ 0
3V3
Wire Wire Line
	5150 6100 5500 6100
Text Label 1500 6000 0    50   ~ 0
BOOT_SEL
Text Label 5750 6250 2    50   ~ 0
BOOT_UART_TX
Text Label 1500 6250 0    50   ~ 0
BOOT_UART_RX
Wire Wire Line
	5150 6400 5500 6400
Text Label 5500 6400 2    50   ~ 0
GND
$Comp
L elements:стабилизатор_нерегулируемый_LM1117S33 G1
U 1 1 60AA5032
P 3300 12250
F 0 "G1" H 3900 12400 50  0000 C CNN
F 1 "стабилизатор_нерегулируемый_LM1117S33" H 3650 12424 50  0001 C CNN
F 2 "N_VD_HL:Транзистор_NPN_SOT223_pnp" H 3300 12250 50  0001 C CNN
F 3 "" H 3300 12250 50  0001 C CNN
	1    3300 12250
	1    0    0    -1  
$EndComp
$Comp
L elements:Резистор_0,065Вт R21
U 1 1 60AA9798
P 7800 2500
F 0 "R21" H 7800 2650 60  0000 C CNN
F 1 "Резистор_0,065Вт" H 7800 2350 60  0001 C CNN
F 2 "N_RLC:Резистор_SMD_0603_0,065_Вт_pnp" H 7800 2500 60  0001 C CNN
F 3 "" H 7800 2500 60  0001 C CNN
F 4 "R101" H 7800 2500 50  0001 C CNN "УГО"
F 5 "240 Ом" H 7800 2350 50  0000 C CNN "Номинал"
	1    7800 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2500 8250 2500
$Comp
L elements:Резистор_0,065Вт R22
U 1 1 60AB3059
P 7800 3000
F 0 "R22" H 7800 3150 60  0000 C CNN
F 1 "Резистор_0,065Вт" H 7800 2850 60  0001 C CNN
F 2 "N_RLC:Резистор_SMD_0603_0,065_Вт_pnp" H 7800 3000 60  0001 C CNN
F 3 "" H 7800 3000 60  0001 C CNN
F 4 "R101" H 7800 3000 50  0001 C CNN "УГО"
F 5 "240 Ом" H 7800 2850 50  0000 C CNN "Номинал"
	1    7800 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 2500 8750 2500
Wire Wire Line
	8750 2500 8750 3000
Wire Wire Line
	8750 3000 8600 3000
Wire Wire Line
	8250 3000 8100 3000
Wire Wire Line
	8750 3000 9000 3000
Connection ~ 8750 3000
Text Label 9000 3000 2    50   ~ 0
GND
NoConn ~ 5450 2900
Wire Bus Line
	1250 1500 6500 1500
Entry Wire Line
	6400 6250 6500 6350
Entry Wire Line
	1250 5900 1350 6000
Entry Wire Line
	1250 6400 1350 6500
Entry Wire Line
	1250 6150 1350 6250
Text Label 6750 2500 0    50   ~ 0
BUTT_1
Text Label 6750 3000 0    50   ~ 0
BUTT_2
Entry Wire Line
	6500 2400 6600 2500
Entry Wire Line
	6500 2900 6600 3000
Text Label 6250 3200 2    50   ~ 0
BUTT_1
Text Label 6250 3050 2    50   ~ 0
BUTT_2
Wire Wire Line
	5450 3500 6400 3500
Wire Wire Line
	5450 3650 6400 3650
Entry Wire Line
	6400 3500 6500 3600
Entry Wire Line
	6400 3650 6500 3750
$Comp
L elements:Резистор_0,065Вт R23
U 1 1 60B1FC6B
P 3000 5450
F 0 "R23" V 2900 5650 60  0000 C CNN
F 1 "Резистор_0,065Вт" H 3000 5300 60  0001 C CNN
F 2 "N_RLC:Резистор_SMD_0603_0,065_Вт_pnp" H 3000 5450 60  0001 C CNN
F 3 "" H 3000 5450 60  0001 C CNN
F 4 "R101" H 3000 5450 50  0001 C CNN "УГО"
F 5 "10 кОм" V 3100 5700 50  0000 C CNN "Номинал"
	1    3000 5450
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 5750 3000 6000
Wire Wire Line
	3000 5150 3000 5000
Text Label 3000 5000 0    50   ~ 0
3V3
Wire Wire Line
	4250 6250 1350 6250
Wire Wire Line
	4000 6000 4000 6100
Wire Wire Line
	4000 6100 4250 6100
Wire Wire Line
	4000 6400 4250 6400
Wire Wire Line
	4000 6400 4000 6500
Wire Wire Line
	5150 6250 6400 6250
Connection ~ 3000 6000
$Comp
L elements:Резистор_0,065Вт R26
U 1 1 60B6A564
P 2500 5450
F 0 "R26" V 2400 5650 60  0000 C CNN
F 1 "Резистор_0,065Вт" H 2500 5300 60  0001 C CNN
F 2 "N_RLC:Резистор_SMD_0603_0,065_Вт_pnp" H 2500 5450 60  0001 C CNN
F 3 "" H 2500 5450 60  0001 C CNN
F 4 "R101" H 2500 5450 50  0001 C CNN "УГО"
F 5 "10 кОм" V 2600 5700 50  0000 C CNN "Номинал"
	1    2500 5450
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 5150 2500 5000
Text Label 2500 5000 0    50   ~ 0
3V3
Wire Wire Line
	1350 6000 3000 6000
Wire Wire Line
	2500 5750 2500 6500
Connection ~ 2500 6500
Wire Wire Line
	2500 6500 1350 6500
$Comp
L elements:Транзистор_полевой_N-IRLML6344TR VT3
U 1 1 60B74BB0
P 8450 7300
F 0 "VT3" H 8600 7801 60  0000 C CNN
F 1 "Транзистор_полевой_N-IRLML6344TR" H 8600 7801 60  0001 C CNN
F 2 "N_VD_HL:Транзистор_IRLML6344TR_SOT-23" H 8450 7300 60  0001 C CNN
F 3 "" H 8450 7300 60  0001 C CNN
	1    8450 7300
	1    0    0    -1  
$EndComp
$Comp
L elements:Транзистор_полевой_P-канал(IRLML2246TRPBF) VT2
U 1 1 60B7CD8F
P 7750 5750
F 0 "VT2" H 7904 5549 60  0000 C CNN
F 1 "Транзистор_полевой_P-канал(IRLML2246TRPBF)" H 7904 6251 60  0001 C CNN
F 2 "N_VD_HL:Транзистор_IRLML6344TR_SOT-23" H 7950 6400 60  0001 C CNN
F 3 "" H 7750 5750 60  0001 C CNN
	1    7750 5750
	1    0    0    1   
$EndComp
$Comp
L elements:Транзистор_полевой_P-канал(IRLML2246TRPBF) VT1
U 1 1 60B7EDA1
P 7750 4250
F 0 "VT1" H 7904 4049 60  0000 C CNN
F 1 "Транзистор_полевой_P-канал(IRLML2246TRPBF)" H 7904 4751 60  0001 C CNN
F 2 "N_VD_HL:Транзистор_IRLML6344TR_SOT-23" H 7950 4900 60  0001 C CNN
F 3 "" H 7750 4250 60  0001 C CNN
	1    7750 4250
	1    0    0    1   
$EndComp
$Comp
L elements:Транзистор_полевой_N-IRLML6344TR VT4
U 1 1 60B83D24
P 8450 9000
F 0 "VT4" H 8600 9501 60  0000 C CNN
F 1 "Транзистор_полевой_N-IRLML6344TR" H 8600 9501 60  0001 C CNN
F 2 "N_VD_HL:Транзистор_IRLML6344TR_SOT-23" H 8450 9000 60  0001 C CNN
F 3 "" H 8450 9000 60  0001 C CNN
	1    8450 9000
	1    0    0    -1  
$EndComp
$Comp
L elements:Транзистор_полевой_N-IRLML6344TR VT5
U 1 1 60B849B7
P 13450 2750
F 0 "VT5" H 13600 3251 60  0000 C CNN
F 1 "Транзистор_полевой_N-IRLML6344TR" H 13600 3251 60  0001 C CNN
F 2 "N_VD_HL:Транзистор_IRLML6344TR_SOT-23" H 13450 2750 60  0001 C CNN
F 3 "" H 13450 2750 60  0001 C CNN
	1    13450 2750
	1    0    0    -1  
$EndComp
$Comp
L elements:Транзистор_полевой_N-IRLML6344TR VT6
U 1 1 60B8501D
P 13450 4500
F 0 "VT6" H 13600 5001 60  0000 C CNN
F 1 "Транзистор_полевой_N-IRLML6344TR" H 13600 5001 60  0001 C CNN
F 2 "N_VD_HL:Транзистор_IRLML6344TR_SOT-23" H 13450 4500 60  0001 C CNN
F 3 "" H 13450 4500 60  0001 C CNN
	1    13450 4500
	1    0    0    -1  
$EndComp
$Comp
L elements:Транзистор_полевой_N-IRLML6344TR VT7
U 1 1 60B85A4C
P 13450 6250
F 0 "VT7" H 13600 6751 60  0000 C CNN
F 1 "Транзистор_полевой_N-IRLML6344TR" H 13600 6751 60  0001 C CNN
F 2 "N_VD_HL:Транзистор_IRLML6344TR_SOT-23" H 13450 6250 60  0001 C CNN
F 3 "" H 13450 6250 60  0001 C CNN
	1    13450 6250
	1    0    0    -1  
$EndComp
$Comp
L elements:Транзистор_полевой_N-IRLML6344TR VT8
U 1 1 60B85A56
P 13450 8000
F 0 "VT8" H 13600 8501 60  0000 C CNN
F 1 "Транзистор_полевой_N-IRLML6344TR" H 13600 8501 60  0001 C CNN
F 2 "N_VD_HL:Транзистор_IRLML6344TR_SOT-23" H 13450 8000 60  0001 C CNN
F 3 "" H 13450 8000 60  0001 C CNN
	1    13450 8000
	1    0    0    -1  
$EndComp
$Comp
L elements:Транзистор_полевой_N-IRLML6344TR VT9
U 1 1 60B85A60
P 13450 9750
F 0 "VT9" H 13600 10251 60  0000 C CNN
F 1 "Транзистор_полевой_N-IRLML6344TR" H 13600 10251 60  0001 C CNN
F 2 "N_VD_HL:Транзистор_IRLML6344TR_SOT-23" H 13450 9750 60  0001 C CNN
F 3 "" H 13450 9750 60  0001 C CNN
	1    13450 9750
	1    0    0    -1  
$EndComp
$Comp
L elements:Транзистор_полевой_N-IRLML6344TR VT10
U 1 1 60B85A6A
P 16450 2750
F 0 "VT10" H 16600 3251 60  0000 C CNN
F 1 "Транзистор_полевой_N-IRLML6344TR" H 16600 3251 60  0001 C CNN
F 2 "N_VD_HL:Транзистор_IRLML6344TR_SOT-23" H 16450 2750 60  0001 C CNN
F 3 "" H 16450 2750 60  0001 C CNN
	1    16450 2750
	1    0    0    -1  
$EndComp
$Comp
L elements:Транзистор_полевой_N-IRLML6344TR VT11
U 1 1 60B8C1C7
P 16450 4500
F 0 "VT11" H 16600 5001 60  0000 C CNN
F 1 "Транзистор_полевой_N-IRLML6344TR" H 16600 5001 60  0001 C CNN
F 2 "N_VD_HL:Транзистор_IRLML6344TR_SOT-23" H 16450 4500 60  0001 C CNN
F 3 "" H 16450 4500 60  0001 C CNN
	1    16450 4500
	1    0    0    -1  
$EndComp
$Comp
L elements:Конденсатор_керамический C2
U 1 1 60B8FB9B
P 4250 12400
F 0 "C2" V 4230 12488 60  0000 L CNN
F 1 "Конденсатор_керамический" H 4350 12300 60  0001 C CNN
F 2 "N_RLC:Конденсатор_SMD_0603_pnp" H 4250 12400 60  0001 C CNN
F 3 "" H 4250 12400 60  0001 C CNN
F 4 "10 мкФ/6,3 В" V 4328 12488 50  0000 L CNN "Номинал"
F 5 "С111" H 4250 12400 50  0001 C CNN "УГО"
	1    4250 12400
	0    1    1    0   
$EndComp
$Comp
L elements:Конденсатор_керамический C1
U 1 1 60B913A1
P 2500 12400
F 0 "C1" V 2500 12300 60  0000 R CNN
F 1 "Конденсатор_керамический" H 2600 12300 60  0001 C CNN
F 2 "N_RLC:Конденсатор_SMD_0603_pnp" H 2500 12400 60  0001 C CNN
F 3 "" H 2500 12400 60  0001 C CNN
F 4 "1 мкФ/25 В" V 2600 12300 50  0000 R CNN "Номинал"
F 5 "С111" H 2500 12400 50  0001 C CNN "УГО"
	1    2500 12400
	0    -1   1    0   
$EndComp
Wire Wire Line
	2500 12500 2500 12750
Wire Wire Line
	2500 12750 3650 12750
Wire Wire Line
	4250 12750 4250 12500
Wire Wire Line
	3650 12550 3650 12750
Wire Wire Line
	3250 12250 2500 12250
Wire Wire Line
	2500 12250 2500 12350
Wire Wire Line
	4250 12250 4250 12350
Wire Wire Line
	5000 12250 5250 12250
Wire Wire Line
	2500 12250 2000 12250
Connection ~ 2500 12250
Text Label 5250 12750 2    50   ~ 0
GND
Wire Wire Line
	5250 12750 5000 12750
Text Label 5250 12250 2    50   ~ 0
3V3
Text Label 2000 12250 0    50   ~ 0
4-LION
$Comp
L elements:Резистор_0,065Вт R27
U 1 1 60BDE23A
P 7800 3750
F 0 "R27" H 7800 3900 60  0000 C CNN
F 1 "Резистор_0,065Вт" H 7800 3600 60  0001 C CNN
F 2 "N_RLC:Резистор_SMD_0603_0,065_Вт_pnp" H 7800 3750 60  0001 C CNN
F 3 "" H 7800 3750 60  0001 C CNN
F 4 "R101" H 7800 3750 50  0001 C CNN "УГО"
F 5 "10 кОм" H 7800 3600 50  0000 C CNN "Номинал"
	1    7800 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 3750 7250 3750
Wire Wire Line
	7250 3750 7250 4250
Wire Wire Line
	7250 4250 7500 4250
Wire Wire Line
	8300 4250 8500 4250
Wire Wire Line
	8500 4250 8500 3750
Wire Wire Line
	8500 3750 8100 3750
Wire Wire Line
	8500 3750 8500 3500
Connection ~ 8500 3750
Text Label 8500 3500 0    50   ~ 0
3V3
Text Label 9000 4550 2    50   ~ 0
3V3-RED
Wire Wire Line
	8300 4550 9000 4550
Text Label 6750 4250 0    50   ~ 0
LED_RED
Wire Wire Line
	7250 4250 6600 4250
Connection ~ 7250 4250
Entry Wire Line
	6500 4150 6600 4250
$Comp
L elements:Резистор_0,065Вт R28
U 1 1 60BFA9A6
P 7800 5250
F 0 "R28" H 7800 5400 60  0000 C CNN
F 1 "Резистор_0,065Вт" H 7800 5100 60  0001 C CNN
F 2 "N_RLC:Резистор_SMD_0603_0,065_Вт_pnp" H 7800 5250 60  0001 C CNN
F 3 "" H 7800 5250 60  0001 C CNN
F 4 "R101" H 7800 5250 50  0001 C CNN "УГО"
F 5 "10 кОм" H 7800 5100 50  0000 C CNN "Номинал"
	1    7800 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 5250 7250 5250
Wire Wire Line
	7250 5250 7250 5750
Wire Wire Line
	7250 5750 7500 5750
Wire Wire Line
	8300 5750 8500 5750
Wire Wire Line
	8500 5750 8500 5250
Wire Wire Line
	8500 5250 8100 5250
Wire Wire Line
	8500 5250 8500 5000
Connection ~ 8500 5250
Text Label 8500 5000 0    50   ~ 0
3V3
Text Label 9000 6050 2    50   ~ 0
3V3-GREEN
Wire Wire Line
	8300 6050 9000 6050
Wire Wire Line
	7250 5750 6600 5750
Connection ~ 7250 5750
Entry Wire Line
	6500 5650 6600 5750
Text Label 6750 5750 0    50   ~ 0
LED_GREEN
$Comp
L elements:Резистор_0,065Вт R3
U 1 1 60C24C9F
P 8550 6500
F 0 "R3" H 8550 6650 60  0000 C CNN
F 1 "Резистор_0,065Вт" H 8550 6350 60  0001 C CNN
F 2 "N_RLC:Резистор_SMD_0603_0,065_Вт_pnp" H 8550 6500 60  0001 C CNN
F 3 "" H 8550 6500 60  0001 C CNN
F 4 "R101" H 8550 6500 50  0001 C CNN "УГО"
F 5 "240 Ом" H 8550 6350 50  0000 C CNN "Номинал"
	1    8550 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 6500 8000 6500
Connection ~ 8000 6500
Wire Wire Line
	8000 6500 8250 6500
Wire Wire Line
	8850 6500 9000 6500
Wire Wire Line
	9000 6500 9000 7000
$Comp
L elements:Резистор_0,065Вт R1
U 1 1 60C3A71B
P 8500 7750
F 0 "R1" H 8500 7900 60  0000 C CNN
F 1 "Резистор_0,065Вт" H 8500 7600 60  0001 C CNN
F 2 "N_RLC:Резистор_SMD_0603_0,065_Вт_pnp" H 8500 7750 60  0001 C CNN
F 3 "" H 8500 7750 60  0001 C CNN
F 4 "R101" H 8500 7750 50  0001 C CNN "УГО"
F 5 "10 кОм" H 8500 7600 50  0000 C CNN "Номинал"
	1    8500 7750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 7300 9000 7750
Wire Wire Line
	9000 7750 8800 7750
Wire Wire Line
	8200 7300 8000 7300
Wire Wire Line
	8000 7300 8000 7750
Wire Wire Line
	8000 7750 8200 7750
Wire Wire Line
	9000 7750 9250 7750
Connection ~ 9000 7750
Text Label 9250 7750 2    50   ~ 0
GND
Text Label 7000 6700 0    50   ~ 0
3V3-GREEN
Text Label 7000 6500 0    50   ~ 0
3V3-RED
Wire Wire Line
	7500 6700 7000 6700
Wire Wire Line
	7000 6500 7500 6500
Text Label 7000 7300 0    50   ~ 0
LED_1
Wire Wire Line
	8000 7300 6600 7300
Connection ~ 8000 7300
Entry Wire Line
	6500 7200 6600 7300
$Comp
L elements:Резистор_0,065Вт R4
U 1 1 60C56A21
P 8550 8200
F 0 "R4" H 8550 8350 60  0000 C CNN
F 1 "Резистор_0,065Вт" H 8550 8050 60  0001 C CNN
F 2 "N_RLC:Резистор_SMD_0603_0,065_Вт_pnp" H 8550 8200 60  0001 C CNN
F 3 "" H 8550 8200 60  0001 C CNN
F 4 "R101" H 8550 8200 50  0001 C CNN "УГО"
F 5 "240 Ом" H 8550 8050 50  0000 C CNN "Номинал"
	1    8550 8200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 8200 8000 8200
Wire Wire Line
	7800 8400 8000 8400
Connection ~ 8000 8200
Wire Wire Line
	8000 8200 8250 8200
Wire Wire Line
	8850 8200 9000 8200
Wire Wire Line
	9000 8200 9000 8700
$Comp
L elements:Резистор_0,065Вт R2
U 1 1 60C56A34
P 8500 9450
F 0 "R2" H 8500 9600 60  0000 C CNN
F 1 "Резистор_0,065Вт" H 8500 9300 60  0001 C CNN
F 2 "N_RLC:Резистор_SMD_0603_0,065_Вт_pnp" H 8500 9450 60  0001 C CNN
F 3 "" H 8500 9450 60  0001 C CNN
F 4 "R101" H 8500 9450 50  0001 C CNN "УГО"
F 5 "10 кОм" H 8500 9300 50  0000 C CNN "Номинал"
	1    8500 9450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 9000 9000 9450
Wire Wire Line
	9000 9450 8800 9450
Wire Wire Line
	8200 9000 8000 9000
Wire Wire Line
	8000 9000 8000 9450
Wire Wire Line
	8000 9450 8200 9450
Wire Wire Line
	9000 9450 9250 9450
Connection ~ 9000 9450
Text Label 9250 9450 2    50   ~ 0
GND
Text Label 7000 8400 0    50   ~ 0
3V3-GREEN
Text Label 7000 8200 0    50   ~ 0
3V3-RED
Wire Wire Line
	7500 8400 7000 8400
Wire Wire Line
	7000 8200 7500 8200
Text Label 7000 9000 0    50   ~ 0
LED_2
Wire Wire Line
	8000 9000 6600 9000
Connection ~ 8000 9000
Entry Wire Line
	6500 8900 6600 9000
$Comp
L elements:Резистор_0,065Вт R10
U 1 1 60C6F3EF
P 13550 1950
F 0 "R10" H 13550 2100 60  0000 C CNN
F 1 "Резистор_0,065Вт" H 13550 1800 60  0001 C CNN
F 2 "N_RLC:Резистор_SMD_0603_0,065_Вт_pnp" H 13550 1950 60  0001 C CNN
F 3 "" H 13550 1950 60  0001 C CNN
F 4 "R101" H 13550 1950 50  0001 C CNN "УГО"
F 5 "240 Ом" H 13550 1800 50  0000 C CNN "Номинал"
	1    13550 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	12800 1950 13000 1950
Wire Wire Line
	12800 2150 13000 2150
Connection ~ 13000 1950
Wire Wire Line
	13000 1950 13250 1950
Wire Wire Line
	13850 1950 14000 1950
Wire Wire Line
	14000 1950 14000 2450
$Comp
L elements:Резистор_0,065Вт R5
U 1 1 60C6F402
P 13500 3200
F 0 "R5" H 13500 3350 60  0000 C CNN
F 1 "Резистор_0,065Вт" H 13500 3050 60  0001 C CNN
F 2 "N_RLC:Резистор_SMD_0603_0,065_Вт_pnp" H 13500 3200 60  0001 C CNN
F 3 "" H 13500 3200 60  0001 C CNN
F 4 "R101" H 13500 3200 50  0001 C CNN "УГО"
F 5 "10 кОм" H 13500 3050 50  0000 C CNN "Номинал"
	1    13500 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	14000 2750 14000 3200
Wire Wire Line
	14000 3200 13800 3200
Wire Wire Line
	13200 2750 13000 2750
Wire Wire Line
	13000 2750 13000 3200
Wire Wire Line
	13000 3200 13200 3200
Wire Wire Line
	14000 3200 14250 3200
Connection ~ 14000 3200
Text Label 14250 3200 2    50   ~ 0
GND
Text Label 12000 2150 0    50   ~ 0
3V3-GREEN
Text Label 12000 1950 0    50   ~ 0
3V3-RED
Wire Wire Line
	12500 2150 12000 2150
Wire Wire Line
	12000 1950 12500 1950
Text Label 12000 2750 0    50   ~ 0
LED_3
Wire Wire Line
	13000 2750 11600 2750
Connection ~ 13000 2750
Entry Wire Line
	11500 2650 11600 2750
$Comp
L elements:Резистор_0,065Вт R11
U 1 1 60C8CAC0
P 13550 3700
F 0 "R11" H 13550 3850 60  0000 C CNN
F 1 "Резистор_0,065Вт" H 13550 3550 60  0001 C CNN
F 2 "N_RLC:Резистор_SMD_0603_0,065_Вт_pnp" H 13550 3700 60  0001 C CNN
F 3 "" H 13550 3700 60  0001 C CNN
F 4 "R101" H 13550 3700 50  0001 C CNN "УГО"
F 5 "240 Ом" H 13550 3550 50  0000 C CNN "Номинал"
	1    13550 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	12800 3700 13000 3700
Wire Wire Line
	12800 3900 13000 3900
Connection ~ 13000 3700
Wire Wire Line
	13000 3700 13250 3700
Wire Wire Line
	13850 3700 14000 3700
Wire Wire Line
	14000 3700 14000 4200
$Comp
L elements:Резистор_0,065Вт R6
U 1 1 60C8CAD3
P 13500 4950
F 0 "R6" H 13500 5100 60  0000 C CNN
F 1 "Резистор_0,065Вт" H 13500 4800 60  0001 C CNN
F 2 "N_RLC:Резистор_SMD_0603_0,065_Вт_pnp" H 13500 4950 60  0001 C CNN
F 3 "" H 13500 4950 60  0001 C CNN
F 4 "R101" H 13500 4950 50  0001 C CNN "УГО"
F 5 "10 кОм" H 13500 4800 50  0000 C CNN "Номинал"
	1    13500 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	14000 4500 14000 4950
Wire Wire Line
	14000 4950 13800 4950
Wire Wire Line
	13200 4500 13000 4500
Wire Wire Line
	13000 4500 13000 4950
Wire Wire Line
	13000 4950 13200 4950
Wire Wire Line
	14000 4950 14250 4950
Connection ~ 14000 4950
Text Label 14250 4950 2    50   ~ 0
GND
Text Label 12000 3900 0    50   ~ 0
3V3-GREEN
Text Label 12000 3700 0    50   ~ 0
3V3-RED
Wire Wire Line
	12500 3900 12000 3900
Wire Wire Line
	12000 3700 12500 3700
Text Label 12000 4500 0    50   ~ 0
LED_4
Wire Wire Line
	13000 4500 11600 4500
Connection ~ 13000 4500
Entry Wire Line
	11500 4400 11600 4500
$Comp
L elements:Резистор_0,065Вт R12
U 1 1 60CA45BD
P 13550 5450
F 0 "R12" H 13550 5600 60  0000 C CNN
F 1 "Резистор_0,065Вт" H 13550 5300 60  0001 C CNN
F 2 "N_RLC:Резистор_SMD_0603_0,065_Вт_pnp" H 13550 5450 60  0001 C CNN
F 3 "" H 13550 5450 60  0001 C CNN
F 4 "R101" H 13550 5450 50  0001 C CNN "УГО"
F 5 "240 Ом" H 13550 5300 50  0000 C CNN "Номинал"
	1    13550 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	12800 5450 13000 5450
Wire Wire Line
	12800 5650 13000 5650
Connection ~ 13000 5450
Wire Wire Line
	13000 5450 13250 5450
Wire Wire Line
	13850 5450 14000 5450
Wire Wire Line
	14000 5450 14000 5950
$Comp
L elements:Резистор_0,065Вт R7
U 1 1 60CA45D0
P 13500 6700
F 0 "R7" H 13500 6850 60  0000 C CNN
F 1 "Резистор_0,065Вт" H 13500 6550 60  0001 C CNN
F 2 "N_RLC:Резистор_SMD_0603_0,065_Вт_pnp" H 13500 6700 60  0001 C CNN
F 3 "" H 13500 6700 60  0001 C CNN
F 4 "R101" H 13500 6700 50  0001 C CNN "УГО"
F 5 "10 кОм" H 13500 6550 50  0000 C CNN "Номинал"
	1    13500 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	14000 6250 14000 6700
Wire Wire Line
	14000 6700 13800 6700
Wire Wire Line
	13200 6250 13000 6250
Wire Wire Line
	13000 6250 13000 6700
Wire Wire Line
	13000 6700 13200 6700
Wire Wire Line
	14000 6700 14250 6700
Connection ~ 14000 6700
Text Label 14250 6700 2    50   ~ 0
GND
Text Label 12000 5650 0    50   ~ 0
3V3-GREEN
Text Label 12000 5450 0    50   ~ 0
3V3-RED
Wire Wire Line
	12500 5650 12000 5650
Wire Wire Line
	12000 5450 12500 5450
Text Label 12000 6250 0    50   ~ 0
LED_5
Wire Wire Line
	13000 6250 11600 6250
Connection ~ 13000 6250
Entry Wire Line
	11500 6150 11600 6250
$Comp
L elements:Резистор_0,065Вт R13
U 1 1 60CBE99C
P 13550 7200
F 0 "R13" H 13550 7350 60  0000 C CNN
F 1 "Резистор_0,065Вт" H 13550 7050 60  0001 C CNN
F 2 "N_RLC:Резистор_SMD_0603_0,065_Вт_pnp" H 13550 7200 60  0001 C CNN
F 3 "" H 13550 7200 60  0001 C CNN
F 4 "R101" H 13550 7200 50  0001 C CNN "УГО"
F 5 "240 Ом" H 13550 7050 50  0000 C CNN "Номинал"
	1    13550 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	12800 7200 13000 7200
Wire Wire Line
	12800 7400 13000 7400
Connection ~ 13000 7200
Wire Wire Line
	13000 7200 13250 7200
Wire Wire Line
	13850 7200 14000 7200
Wire Wire Line
	14000 7200 14000 7700
$Comp
L elements:Резистор_0,065Вт R8
U 1 1 60CBE9AF
P 13500 8450
F 0 "R8" H 13500 8600 60  0000 C CNN
F 1 "Резистор_0,065Вт" H 13500 8300 60  0001 C CNN
F 2 "N_RLC:Резистор_SMD_0603_0,065_Вт_pnp" H 13500 8450 60  0001 C CNN
F 3 "" H 13500 8450 60  0001 C CNN
F 4 "R101" H 13500 8450 50  0001 C CNN "УГО"
F 5 "10 кОм" H 13500 8300 50  0000 C CNN "Номинал"
	1    13500 8450
	1    0    0    -1  
$EndComp
Wire Wire Line
	14000 8000 14000 8450
Wire Wire Line
	14000 8450 13800 8450
Wire Wire Line
	13200 8000 13000 8000
Wire Wire Line
	13000 8000 13000 8450
Wire Wire Line
	13000 8450 13200 8450
Wire Wire Line
	14000 8450 14250 8450
Connection ~ 14000 8450
Text Label 14250 8450 2    50   ~ 0
GND
Text Label 12000 7400 0    50   ~ 0
3V3-GREEN
Text Label 12000 7200 0    50   ~ 0
3V3-RED
Wire Wire Line
	12500 7400 12000 7400
Wire Wire Line
	12000 7200 12500 7200
Text Label 12000 8000 0    50   ~ 0
LED_6
Wire Wire Line
	13000 8000 11600 8000
Connection ~ 13000 8000
Entry Wire Line
	11500 7900 11600 8000
$Comp
L elements:Резистор_0,065Вт R14
U 1 1 60CDCE05
P 13550 8950
F 0 "R14" H 13550 9100 60  0000 C CNN
F 1 "Резистор_0,065Вт" H 13550 8800 60  0001 C CNN
F 2 "N_RLC:Резистор_SMD_0603_0,065_Вт_pnp" H 13550 8950 60  0001 C CNN
F 3 "" H 13550 8950 60  0001 C CNN
F 4 "R101" H 13550 8950 50  0001 C CNN "УГО"
F 5 "240 Ом" H 13550 8800 50  0000 C CNN "Номинал"
	1    13550 8950
	1    0    0    -1  
$EndComp
Wire Wire Line
	12800 8950 13000 8950
Wire Wire Line
	12800 9150 13000 9150
Connection ~ 13000 8950
Wire Wire Line
	13000 8950 13250 8950
Wire Wire Line
	13850 8950 14000 8950
Wire Wire Line
	14000 8950 14000 9450
$Comp
L elements:Резистор_0,065Вт R9
U 1 1 60CDCE18
P 13500 10200
F 0 "R9" H 13500 10350 60  0000 C CNN
F 1 "Резистор_0,065Вт" H 13500 10050 60  0001 C CNN
F 2 "N_RLC:Резистор_SMD_0603_0,065_Вт_pnp" H 13500 10200 60  0001 C CNN
F 3 "" H 13500 10200 60  0001 C CNN
F 4 "R101" H 13500 10200 50  0001 C CNN "УГО"
F 5 "10 кОм" H 13500 10050 50  0000 C CNN "Номинал"
	1    13500 10200
	1    0    0    -1  
$EndComp
Wire Wire Line
	14000 9750 14000 10200
Wire Wire Line
	14000 10200 13800 10200
Wire Wire Line
	13200 9750 13000 9750
Wire Wire Line
	13000 9750 13000 10200
Wire Wire Line
	13000 10200 13200 10200
Wire Wire Line
	14000 10200 14250 10200
Connection ~ 14000 10200
Text Label 14250 10200 2    50   ~ 0
GND
Text Label 12000 9150 0    50   ~ 0
3V3-GREEN
Text Label 12000 8950 0    50   ~ 0
3V3-RED
Wire Wire Line
	12500 9150 12000 9150
Wire Wire Line
	12000 8950 12500 8950
Text Label 12000 9750 0    50   ~ 0
LED_7
Wire Wire Line
	13000 9750 11600 9750
Connection ~ 13000 9750
Entry Wire Line
	11500 9650 11600 9750
$Comp
L elements:Резистор_0,065Вт R17
U 1 1 60D02253
P 16550 1950
F 0 "R17" H 16550 2100 60  0000 C CNN
F 1 "Резистор_0,065Вт" H 16550 1800 60  0001 C CNN
F 2 "N_RLC:Резистор_SMD_0603_0,065_Вт_pnp" H 16550 1950 60  0001 C CNN
F 3 "" H 16550 1950 60  0001 C CNN
F 4 "R101" H 16550 1950 50  0001 C CNN "УГО"
F 5 "240 Ом" H 16550 1800 50  0000 C CNN "Номинал"
	1    16550 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	15800 1950 16000 1950
Wire Wire Line
	15800 2150 16000 2150
Connection ~ 16000 1950
Wire Wire Line
	16000 1950 16250 1950
Wire Wire Line
	16850 1950 17000 1950
Wire Wire Line
	17000 1950 17000 2450
$Comp
L elements:Резистор_0,065Вт R15
U 1 1 60D02266
P 16500 3200
F 0 "R15" H 16500 3350 60  0000 C CNN
F 1 "Резистор_0,065Вт" H 16500 3050 60  0001 C CNN
F 2 "N_RLC:Резистор_SMD_0603_0,065_Вт_pnp" H 16500 3200 60  0001 C CNN
F 3 "" H 16500 3200 60  0001 C CNN
F 4 "R101" H 16500 3200 50  0001 C CNN "УГО"
F 5 "10 кОм" H 16500 3050 50  0000 C CNN "Номинал"
	1    16500 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	17000 2750 17000 3200
Wire Wire Line
	17000 3200 16800 3200
Wire Wire Line
	16200 2750 16000 2750
Wire Wire Line
	16000 2750 16000 3200
Wire Wire Line
	16000 3200 16200 3200
Wire Wire Line
	17000 3200 17250 3200
Connection ~ 17000 3200
Text Label 17250 3200 2    50   ~ 0
GND
Text Label 15000 2150 0    50   ~ 0
3V3-GREEN
Text Label 15000 1950 0    50   ~ 0
3V3-RED
Wire Wire Line
	15500 2150 15000 2150
Wire Wire Line
	15000 1950 15500 1950
Text Label 15000 2750 0    50   ~ 0
LED_8
Wire Wire Line
	16000 2750 14600 2750
Connection ~ 16000 2750
Entry Wire Line
	14500 2650 14600 2750
$Comp
L elements:Резистор_0,065Вт R18
U 1 1 60D02282
P 16550 3700
F 0 "R18" H 16550 3850 60  0000 C CNN
F 1 "Резистор_0,065Вт" H 16550 3550 60  0001 C CNN
F 2 "N_RLC:Резистор_SMD_0603_0,065_Вт_pnp" H 16550 3700 60  0001 C CNN
F 3 "" H 16550 3700 60  0001 C CNN
F 4 "R101" H 16550 3700 50  0001 C CNN "УГО"
F 5 "240 Ом" H 16550 3550 50  0000 C CNN "Номинал"
	1    16550 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	15800 3700 16000 3700
Wire Wire Line
	15800 3900 16000 3900
Connection ~ 16000 3700
Wire Wire Line
	16000 3700 16250 3700
Wire Wire Line
	16850 3700 17000 3700
Wire Wire Line
	17000 3700 17000 4200
$Comp
L elements:Резистор_0,065Вт R16
U 1 1 60D02295
P 16500 4950
F 0 "R16" H 16500 5100 60  0000 C CNN
F 1 "Резистор_0,065Вт" H 16500 4800 60  0001 C CNN
F 2 "N_RLC:Резистор_SMD_0603_0,065_Вт_pnp" H 16500 4950 60  0001 C CNN
F 3 "" H 16500 4950 60  0001 C CNN
F 4 "R101" H 16500 4950 50  0001 C CNN "УГО"
F 5 "10 кОм" H 16500 4800 50  0000 C CNN "Номинал"
	1    16500 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	17000 4950 16800 4950
Wire Wire Line
	16200 4500 16000 4500
Wire Wire Line
	16000 4500 16000 4950
Wire Wire Line
	16000 4950 16200 4950
Wire Wire Line
	17000 4950 17250 4950
Connection ~ 17000 4950
Text Label 17250 4950 2    50   ~ 0
GND
Text Label 15000 3900 0    50   ~ 0
3V3-GREEN
Text Label 15000 3700 0    50   ~ 0
3V3-RED
Wire Wire Line
	15500 3900 15000 3900
Wire Wire Line
	15000 3700 15500 3700
Text Label 15000 4500 0    50   ~ 0
LED_9
Wire Wire Line
	16000 4500 14600 4500
Connection ~ 16000 4500
Entry Wire Line
	14500 4400 14600 4500
Wire Wire Line
	17000 4500 17000 4950
Wire Bus Line
	6500 15000 11500 15000
Wire Bus Line
	11500 1500 14500 1500
Entry Wire Line
	1250 8025 1350 8125
Entry Wire Line
	1250 11650 1350 11750
$Comp
L elements:Вилка_PLS6 XP4
U 1 1 60B6DCF3
P 4750 7300
F 0 "XP4" H 4950 7350 60  0000 R CNN
F 1 "Вилка_PLS6" H 5050 6525 60  0001 C CNN
F 2 "N_X:Вилка_PLD6_вертикальная" H 4750 7300 60  0001 C CNN
F 3 "" H 4750 7300 60  0001 C CNN
	1    4750 7300
	-1   0    0    -1  
$EndComp
$Comp
L elements:Вилка_PLS6 XP5
U 1 1 60B73F1A
P 4750 11150
F 0 "XP5" H 5000 11200 60  0000 R CNN
F 1 "Вилка_PLS6" H 5050 10375 60  0001 C CNN
F 2 "N_X:Вилка_PLD6_вертикальная" H 4750 11150 60  0001 C CNN
F 3 "" H 4750 11150 60  0001 C CNN
	1    4750 11150
	-1   0    0    -1  
$EndComp
Text Label 3250 8250 0    50   ~ 0
MOTOR-GND
Wire Wire Line
	4250 7800 4000 7800
Wire Wire Line
	4000 7800 4000 7900
Wire Wire Line
	4000 7900 4250 7900
Text Label 3250 7200 0    50   ~ 0
4-LION
Text Label 1500 11750 0    50   ~ 0
GND
Text Label 1500 11650 0    50   ~ 0
GND
Entry Wire Line
	1250 7400 1350 7500
Text Label 1375 7500 0    50   ~ 0
CHARGE-SENS
Text Label 3250 8125 0    50   ~ 0
BUTTON-LED
Entry Wire Line
	1250 7100 1350 7200
NoConn ~ 4250 7700
Text Label 7000 11500 0    50   ~ 0
MOTOR-DRIVE
Entry Wire Line
	6500 11400 6600 11500
Text Label 3500 10750 2    50   ~ 0
4-LION
Entry Wire Line
	1250 10900 1350 11000
Text Label 8350 10400 0    50   ~ 0
4-LION
Text Label 6250 2150 2    50   ~ 0
MOTOR-DRIVE
$Comp
L elements:Диод_шоттки VD1
U 1 1 60F60840
P 8850 10800
F 0 "VD1" V 9046 10697 50  0000 R CNN
F 1 "Диод_шоттки" V 8955 10697 50  0000 R CNN
F 2 "N_VD_HL:Диод_SMB_pnp" H 8750 10800 50  0001 C CNN
F 3 "" H 8750 10800 50  0001 C CNN
	1    8850 10800
	0    1    -1   0   
$EndComp
Text Label 8350 10900 0    50   ~ 0
MOTOR-GND
Wire Wire Line
	8850 10400 8850 10500
Wire Wire Line
	8850 10800 8850 10900
Wire Wire Line
	8350 10900 8850 10900
Connection ~ 8850 10900
Wire Wire Line
	8850 10900 8850 11100
Wire Wire Line
	8350 10400 8850 10400
$Comp
L elements:Транзистор_NPN_1Б-2(4)К-3Э_0 VT13
U 1 1 60FBE2DD
P 8550 11500
F 0 "VT13" H 9153 11553 60  0000 L CNN
F 1 "Транзистор_NPN_1Б-2(4)К-3Э_0" H 9153 11447 60  0000 L CNN
F 2 "N_VD_HL:Транзистор_NPN_SOT223_pnp" H 8550 11500 60  0001 C CNN
F 3 "" H 8550 11500 60  0001 C CNN
	1    8550 11500
	1    0    0    -1  
$EndComp
$Comp
L elements:Резистор_0,065Вт R29
U 1 1 60FE311C
P 8050 11500
F 0 "R29" H 8050 11650 60  0000 C CNN
F 1 "Резистор_0,065Вт" H 8050 11350 60  0001 C CNN
F 2 "N_RLC:Резистор_SMD_0603_0,065_Вт_pnp" H 8050 11500 60  0001 C CNN
F 3 "" H 8050 11500 60  0001 C CNN
F 4 "R101" H 8050 11500 50  0001 C CNN "УГО"
F 5 "1 кОм" H 8050 11350 50  0000 C CNN "Номинал"
	1    8050 11500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 11500 8550 11500
Wire Wire Line
	7750 11500 6600 11500
Wire Wire Line
	9000 11900 9000 12000
Wire Wire Line
	9000 12000 8500 12000
Text Label 8500 12000 0    50   ~ 0
GND
Wire Wire Line
	8850 10900 9000 10900
Wire Wire Line
	9000 10900 9000 11100
Text Notes 9050 11150 0    50   ~ 0
требует подобрать транзистор \nи проверить, подходит ли он
Text Label 3500 10125 2    50   ~ 0
3-LION
$Comp
L ITC-1-rescue:ИОП_LM4040BIM3-2.5_NOPB-MOTOR_2020_import G2
U 1 1 60B2EC44
P 2625 14000
F 0 "G2" H 2875 14173 50  0000 C CNN
F 1 "ИОП_LM4040BIM3-2.5_NOPB" H 3075 13575 50  0001 C CNN
F 2 "MOTOR_VD_VT_HL:Корпус_КТ-46" H 2775 14500 50  0001 C CNN
F 3 "${MOTOR_2020_LIB}\\documentation\\IMPORT\\LM4040.pdf" H 2675 14000 50  0001 C CNN
F 4 "-" H 2650 14300 50  0001 C CNN "TY"
F 5 "-" H 2650 14225 50  0001 C CNN "INFO"
F 6 "https://www.chipdip.ru/product/lm4040bim3-2.5-nopb" H 3000 14400 50  0001 C CNN "LINK"
	1    2625 14000
	1    0    0    -1  
$EndComp
$Comp
L elements:Резистор_0,065Вт R32
U 1 1 60B30779
P 2500 13450
F 0 "R32" V 2400 13650 60  0000 C CNN
F 1 "Резистор_0,065Вт" H 2500 13300 60  0001 C CNN
F 2 "N_RLC:Резистор_SMD_0603_0,065_Вт_pnp" H 2500 13450 60  0001 C CNN
F 3 "" H 2500 13450 60  0001 C CNN
F 4 "R101" H 2500 13450 50  0001 C CNN "УГО"
F 5 "10 кОм" V 2600 13700 50  0000 C CNN "Номинал"
	1    2500 13450
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 13750 2500 14000
Wire Wire Line
	2500 14000 2625 14000
Wire Wire Line
	2625 14200 2500 14200
Wire Wire Line
	2500 14200 2500 14500
Wire Wire Line
	2500 13000 2500 13150
Wire Wire Line
	2875 13000 2500 13000
Wire Wire Line
	2500 14500 2875 14500
Text Label 2875 14500 2    50   ~ 0
GND
Connection ~ 2500 14000
Text Label 2125 14000 0    50   ~ 0
U-REF
Entry Wire Line
	1250 2350 1350 2450
Wire Wire Line
	1350 2450 2000 2450
Entry Wire Line
	1250 2500 1350 2600
Wire Wire Line
	1350 2600 2000 2600
Entry Wire Line
	1250 2650 1350 2750
Wire Wire Line
	1350 2750 2000 2750
Entry Wire Line
	1250 2800 1350 2900
Wire Wire Line
	1350 2900 2000 2900
Text Label 1500 2450 0    50   ~ 0
ADC1-CH0
Text Label 1500 2600 0    50   ~ 0
ADC1-CH3
Text Label 1500 2750 0    50   ~ 0
ADC1-CH6
Text Label 1500 2900 0    50   ~ 0
ADC1-CH7
Entry Wire Line
	1250 2950 1350 3050
Wire Wire Line
	1350 3050 2000 3050
Text Label 1500 3050 0    50   ~ 0
ADC1-CH4
Text Label 1500 11000 0    50   ~ 0
ADC1-CH0
Text Label 1500 10125 0    50   ~ 0
ADC1-CH3
Text Label 1500 8875 0    50   ~ 0
ADC1-CH6
Text Label 1500 9500 0    50   ~ 0
ADC1-CH7
Text Label 1500 14000 0    50   ~ 0
ADC1-CH4
$Comp
L elements:Резистор_0,065Вт R33
U 1 1 60D30AF6
P 2425 11000
F 0 "R33" H 2425 11150 60  0000 C CNN
F 1 "Резистор_0,065Вт" H 2425 10850 60  0001 C CNN
F 2 "N_RLC:Резистор_SMD_0603_0,065_Вт_pnp" H 2425 11000 60  0001 C CNN
F 3 "" H 2425 11000 60  0001 C CNN
F 4 "R101" H 2425 11000 50  0001 C CNN "УГО"
F 5 "10 кОм" H 2425 10850 50  0000 C CNN "Номинал"
	1    2425 11000
	1    0    0    -1  
$EndComp
$Comp
L elements:Резистор_0,065Вт R37
U 1 1 60D32E88
P 3025 11250
F 0 "R37" H 3025 11400 60  0000 C CNN
F 1 "Резистор_0,065Вт" H 3025 11100 60  0001 C CNN
F 2 "N_RLC:Резистор_SMD_0603_0,065_Вт_pnp" H 3025 11250 60  0001 C CNN
F 3 "" H 3025 11250 60  0001 C CNN
F 4 "R101" H 3025 11250 50  0001 C CNN "УГО"
F 5 "10 кОм" H 3025 11100 50  0000 C CNN "Номинал"
	1    3025 11250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 11000 2000 11000
Wire Wire Line
	2000 11000 2000 11250
Wire Wire Line
	2000 11250 2725 11250
Connection ~ 2000 11000
Wire Wire Line
	2000 11000 2125 11000
Text Label 3500 11250 2    50   ~ 0
GND
Wire Wire Line
	3325 11250 3500 11250
Entry Wire Line
	1250 10025 1350 10125
$Comp
L elements:Резистор_0,065Вт R38
U 1 1 60E10192
P 3025 10375
F 0 "R38" H 3025 10525 60  0000 C CNN
F 1 "Резистор_0,065Вт" H 3025 10225 60  0001 C CNN
F 2 "N_RLC:Резистор_SMD_0603_0,065_Вт_pnp" H 3025 10375 60  0001 C CNN
F 3 "" H 3025 10375 60  0001 C CNN
F 4 "R101" H 3025 10375 50  0001 C CNN "УГО"
F 5 "10 кОм" H 3025 10225 50  0000 C CNN "Номинал"
	1    3025 10375
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 10125 2000 10125
Wire Wire Line
	2000 10125 2000 10375
Wire Wire Line
	2000 10375 2725 10375
Connection ~ 2000 10125
Text Label 3500 10375 2    50   ~ 0
GND
Wire Wire Line
	3325 10375 3500 10375
Entry Wire Line
	1250 8775 1350 8875
$Comp
L elements:Резистор_0,065Вт R39
U 1 1 60E434FB
P 3025 9125
F 0 "R39" H 3025 9275 60  0000 C CNN
F 1 "Резистор_0,065Вт" H 3025 8975 60  0001 C CNN
F 2 "N_RLC:Резистор_SMD_0603_0,065_Вт_pnp" H 3025 9125 60  0001 C CNN
F 3 "" H 3025 9125 60  0001 C CNN
F 4 "R101" H 3025 9125 50  0001 C CNN "УГО"
F 5 "10 кОм" H 3025 8975 50  0000 C CNN "Номинал"
	1    3025 9125
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 8875 2000 8875
Wire Wire Line
	2000 8875 2000 9125
Wire Wire Line
	2000 9125 2725 9125
Connection ~ 2000 8875
Text Label 3500 9125 2    50   ~ 0
GND
Wire Wire Line
	3325 9125 3500 9125
Entry Wire Line
	1250 9400 1350 9500
$Comp
L elements:Резистор_0,065Вт R40
U 1 1 60E5D454
P 3025 9750
F 0 "R40" H 3025 9900 60  0000 C CNN
F 1 "Резистор_0,065Вт" H 3025 9600 60  0001 C CNN
F 2 "N_RLC:Резистор_SMD_0603_0,065_Вт_pnp" H 3025 9750 60  0001 C CNN
F 3 "" H 3025 9750 60  0001 C CNN
F 4 "R101" H 3025 9750 50  0001 C CNN "УГО"
F 5 "10 кОм" H 3025 9600 50  0000 C CNN "Номинал"
	1    3025 9750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 9500 2000 9500
Wire Wire Line
	2000 9500 2000 9750
Wire Wire Line
	2000 9750 2725 9750
Connection ~ 2000 9500
Text Label 3500 9750 2    50   ~ 0
GND
Wire Wire Line
	3325 9750 3500 9750
Entry Wire Line
	1250 11550 1350 11650
Wire Wire Line
	1350 11750 4250 11750
Wire Wire Line
	1350 11650 4250 11650
Wire Wire Line
	2725 11000 3750 11000
Wire Wire Line
	5450 3350 6400 3350
Wire Wire Line
	5450 3200 6400 3200
Wire Wire Line
	5450 3050 6400 3050
Entry Wire Line
	6500 2050 6400 2150
Wire Wire Line
	5450 2150 6400 2150
Wire Wire Line
	1500 14000 2500 14000
$Comp
L elements:Резистор_0,065Вт R41
U 1 1 60AF21AC
P 2425 7500
F 0 "R41" H 2425 7650 60  0000 C CNN
F 1 "Резистор_0,065Вт" H 2425 7350 60  0001 C CNN
F 2 "N_RLC:Резистор_SMD_0603_0,065_Вт_pnp" H 2425 7500 60  0001 C CNN
F 3 "" H 2425 7500 60  0001 C CNN
F 4 "R101" H 2425 7500 50  0001 C CNN "УГО"
F 5 "10 кОм" H 2425 7350 50  0000 C CNN "Номинал"
	1    2425 7500
	1    0    0    -1  
$EndComp
$Comp
L elements:Резистор_0,065Вт R42
U 1 1 60AF21B8
P 3025 7750
F 0 "R42" H 3025 7900 60  0000 C CNN
F 1 "Резистор_0,065Вт" H 3025 7600 60  0001 C CNN
F 2 "N_RLC:Резистор_SMD_0603_0,065_Вт_pnp" H 3025 7750 60  0001 C CNN
F 3 "" H 3025 7750 60  0001 C CNN
F 4 "R101" H 3025 7750 50  0001 C CNN "УГО"
F 5 "10 кОм" H 3025 7600 50  0000 C CNN "Номинал"
	1    3025 7750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 7500 2000 7500
Wire Wire Line
	2000 7500 2000 7750
Wire Wire Line
	2000 7750 2725 7750
Connection ~ 2000 7500
Wire Wire Line
	2000 7500 2125 7500
Text Label 3500 7750 2    50   ~ 0
GND
Wire Wire Line
	3325 7750 3500 7750
Wire Wire Line
	1350 7200 3875 7200
Entry Wire Line
	1250 8150 1350 8250
Wire Wire Line
	1350 8250 4000 8250
Wire Wire Line
	4000 8250 4000 7900
Connection ~ 4000 7900
Wire Wire Line
	1350 8125 3875 8125
Wire Wire Line
	3875 8125 3875 7600
Wire Wire Line
	3875 7600 4250 7600
Wire Wire Line
	2725 7500 4250 7500
Wire Wire Line
	4250 7400 3875 7400
Wire Wire Line
	3875 7400 3875 7200
Text Label 6250 2750 2    50   ~ 0
CHARGE-SENS
Wire Wire Line
	5450 2750 6400 2750
Entry Wire Line
	6400 2750 6500 2850
Wire Wire Line
	6600 2500 7500 2500
Wire Wire Line
	7500 3000 6600 3000
Wire Wire Line
	3000 6000 4000 6000
Wire Wire Line
	2500 6500 4000 6500
Entry Wire Line
	1250 10650 1350 10750
Wire Wire Line
	1350 10750 3750 10750
Wire Wire Line
	3750 10750 3750 11000
Wire Wire Line
	2000 10125 2125 10125
Wire Wire Line
	3750 11000 3750 11550
Wire Wire Line
	3750 11550 4250 11550
Connection ~ 3750 11000
Wire Wire Line
	4250 11450 3875 11450
Wire Wire Line
	3875 11450 3875 10125
Wire Wire Line
	4000 9500 4000 11350
Wire Wire Line
	4000 11350 4250 11350
Wire Wire Line
	2000 8875 2125 8875
Wire Wire Line
	4125 11250 4250 11250
Wire Wire Line
	2000 9500 2125 9500
Wire Wire Line
	5450 3800 6400 3800
Entry Wire Line
	6400 3800 6500 3900
Text Label 2875 13000 2    50   ~ 0
3V3
$Comp
L elements:LOGO D1
U 1 1 60B714C3
P 5750 1000
F 0 "D1" H 5675 1200 50  0001 C CNN
F 1 "LOGO" H 5650 1000 50  0000 L CNN
F 2 "N_ICO:ni_10x10" H 5750 1000 50  0001 C CNN
F 3 "" H 5750 1000 50  0001 C CNN
	1    5750 1000
	1    0    0    -1  
$EndComp
$Comp
L elements:LOGO D2
U 1 1 60BDB17A
P 6250 1000
F 0 "D2" H 6175 1200 50  0001 C CNN
F 1 "LOGO" H 6150 1000 50  0000 L CNN
F 2 "N_ICO:VLAD_10x10" H 6250 1000 50  0001 C CNN
F 3 "" H 6250 1000 50  0001 C CNN
	1    6250 1000
	1    0    0    -1  
$EndComp
$Comp
L elements:крепеж X3
U 1 1 60B5240E
P 3750 1000
F 0 "X3" H 3878 1046 50  0000 L CNN
F 1 "крепеж" H 3878 955 50  0000 L CNN
F 2 "N_X:ОтверстиеD1.2" H 3750 1000 50  0001 C CNN
F 3 "" H 3750 1000 50  0001 C CNN
	1    3750 1000
	1    0    0    -1  
$EndComp
$Comp
L elements:крепеж X4
U 1 1 60B8F90D
P 4250 1000
F 0 "X4" H 4378 1046 50  0000 L CNN
F 1 "крепеж" H 4378 955 50  0000 L CNN
F 2 "N_X:ОтверстиеD1.2" H 4250 1000 50  0001 C CNN
F 3 "" H 4250 1000 50  0001 C CNN
	1    4250 1000
	1    0    0    -1  
$EndComp
$Comp
L elements_2020:Светодиод_сдвоенный_KPB-3025SURKCGKC HL1
U 1 1 60BA091B
P 7500 6500
F 0 "HL1" H 7650 6731 60  0000 C CNN
F 1 "Светодиод_сдвоенный_KPB-3025SURKCGKC" H 7650 6731 60  0001 C CNN
F 2 "N_VD_HL:Светодиод_SMD_m3025" H 7800 6000 60  0001 C CNN
F 3 "" H 7800 6000 60  0001 C CNN
	1    7500 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 6700 8000 6700
Wire Wire Line
	8000 6700 8000 6500
$Comp
L elements_2020:Светодиод_сдвоенный_KPB-3025SURKCGKC HL2
U 1 1 60BF0D52
P 7500 8200
F 0 "HL2" H 7650 8431 60  0000 C CNN
F 1 "Светодиод_сдвоенный_KPB-3025SURKCGKC" H 7650 8431 60  0001 C CNN
F 2 "N_VD_HL:Светодиод_SMD_m3025" H 7800 7700 60  0001 C CNN
F 3 "" H 7800 7700 60  0001 C CNN
	1    7500 8200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 8400 8000 8200
$Comp
L elements_2020:Светодиод_сдвоенный_KPB-3025SURKCGKC HL3
U 1 1 60C240BD
P 12500 1950
F 0 "HL3" H 12650 2181 60  0000 C CNN
F 1 "Светодиод_сдвоенный_KPB-3025SURKCGKC" H 12650 2181 60  0001 C CNN
F 2 "N_VD_HL:Светодиод_SMD_m3025" H 12800 1450 60  0001 C CNN
F 3 "" H 12800 1450 60  0001 C CNN
	1    12500 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	13000 2150 13000 1950
$Comp
L elements_2020:Светодиод_сдвоенный_KPB-3025SURKCGKC HL4
U 1 1 60C53F3C
P 12500 3700
F 0 "HL4" H 12650 3931 60  0000 C CNN
F 1 "Светодиод_сдвоенный_KPB-3025SURKCGKC" H 12650 3931 60  0001 C CNN
F 2 "N_VD_HL:Светодиод_SMD_m3025" H 12800 3200 60  0001 C CNN
F 3 "" H 12800 3200 60  0001 C CNN
	1    12500 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	13000 3900 13000 3700
$Comp
L elements_2020:Светодиод_сдвоенный_KPB-3025SURKCGKC HL5
U 1 1 60C8D527
P 12500 5450
F 0 "HL5" H 12650 5681 60  0000 C CNN
F 1 "Светодиод_сдвоенный_KPB-3025SURKCGKC" H 12650 5681 60  0001 C CNN
F 2 "N_VD_HL:Светодиод_SMD_m3025" H 12800 4950 60  0001 C CNN
F 3 "" H 12800 4950 60  0001 C CNN
	1    12500 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	13000 5650 13000 5450
$Comp
L elements_2020:Светодиод_сдвоенный_KPB-3025SURKCGKC HL6
U 1 1 60CB5F25
P 12500 7200
F 0 "HL6" H 12650 7431 60  0000 C CNN
F 1 "Светодиод_сдвоенный_KPB-3025SURKCGKC" H 12650 7431 60  0001 C CNN
F 2 "N_VD_HL:Светодиод_SMD_m3025" H 12800 6700 60  0001 C CNN
F 3 "" H 12800 6700 60  0001 C CNN
	1    12500 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	13000 7400 13000 7200
$Comp
L elements_2020:Светодиод_сдвоенный_KPB-3025SURKCGKC HL7
U 1 1 60CD6C65
P 12500 8950
F 0 "HL7" H 12650 9181 60  0000 C CNN
F 1 "Светодиод_сдвоенный_KPB-3025SURKCGKC" H 12650 9181 60  0001 C CNN
F 2 "N_VD_HL:Светодиод_SMD_m3025" H 12800 8450 60  0001 C CNN
F 3 "" H 12800 8450 60  0001 C CNN
	1    12500 8950
	1    0    0    -1  
$EndComp
Wire Wire Line
	13000 9150 13000 8950
$Comp
L elements_2020:Светодиод_сдвоенный_KPB-3025SURKCGKC HL8
U 1 1 60D2A1D0
P 15500 1950
F 0 "HL8" H 15650 2181 60  0000 C CNN
F 1 "Светодиод_сдвоенный_KPB-3025SURKCGKC" H 15650 2181 60  0001 C CNN
F 2 "N_VD_HL:Светодиод_SMD_m3025" H 15800 1450 60  0001 C CNN
F 3 "" H 15800 1450 60  0001 C CNN
	1    15500 1950
	1    0    0    -1  
$EndComp
$Comp
L elements_2020:Светодиод_сдвоенный_KPB-3025SURKCGKC HL9
U 1 1 60D2AD4B
P 15500 3700
F 0 "HL9" H 15650 3931 60  0000 C CNN
F 1 "Светодиод_сдвоенный_KPB-3025SURKCGKC" H 15650 3931 60  0001 C CNN
F 2 "N_VD_HL:Светодиод_SMD_m3025" H 15800 3200 60  0001 C CNN
F 3 "" H 15800 3200 60  0001 C CNN
	1    15500 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	16000 2150 16000 1950
Wire Wire Line
	16000 3900 16000 3700
$Comp
L elements:Резистор_0,065Вт R24
U 1 1 60BB05C8
P 2425 10125
F 0 "R24" H 2425 10275 60  0000 C CNN
F 1 "Резистор_0,065Вт" H 2425 9975 60  0001 C CNN
F 2 "N_RLC:Резистор_SMD_0603_0,065_Вт_pnp" H 2425 10125 60  0001 C CNN
F 3 "" H 2425 10125 60  0001 C CNN
F 4 "R101" H 2425 10125 50  0001 C CNN "УГО"
F 5 "10 кОм" H 2425 9975 50  0000 C CNN "Номинал"
	1    2425 10125
	1    0    0    -1  
$EndComp
Wire Wire Line
	2725 10125 3875 10125
$Comp
L elements:Резистор_0,065Вт R20
U 1 1 60BB1788
P 2425 8875
F 0 "R20" H 2425 9025 60  0000 C CNN
F 1 "Резистор_0,065Вт" H 2425 8725 60  0001 C CNN
F 2 "N_RLC:Резистор_SMD_0603_0,065_Вт_pnp" H 2425 8875 60  0001 C CNN
F 3 "" H 2425 8875 60  0001 C CNN
F 4 "R101" H 2425 8875 50  0001 C CNN "УГО"
F 5 "10 кОм" H 2425 8725 50  0000 C CNN "Номинал"
	1    2425 8875
	1    0    0    -1  
$EndComp
$Comp
L elements:Резистор_0,065Вт R19
U 1 1 60BB21D7
P 2425 9500
F 0 "R19" H 2425 9650 60  0000 C CNN
F 1 "Резистор_0,065Вт" H 2425 9350 60  0001 C CNN
F 2 "N_RLC:Резистор_SMD_0603_0,065_Вт_pnp" H 2425 9500 60  0001 C CNN
F 3 "" H 2425 9500 60  0001 C CNN
F 4 "R101" H 2425 9500 50  0001 C CNN "УГО"
F 5 "10 кОм" H 2425 9350 50  0000 C CNN "Номинал"
	1    2425 9500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2725 9500 4000 9500
Text Label 3500 8875 2    50   ~ 0
1-LION
Text Label 3500 9500 2    50   ~ 0
2-LION
Wire Wire Line
	4125 8875 4125 11250
Wire Wire Line
	2725 8875 4125 8875
$Comp
L elements:Конденсатор_керамический C3
U 1 1 60C6B107
P 5000 12400
F 0 "C3" V 4980 12488 60  0000 L CNN
F 1 "Конденсатор_керамический" H 5100 12300 60  0001 C CNN
F 2 "N_RLC:Конденсатор_SMD_0603_pnp" H 5000 12400 60  0001 C CNN
F 3 "" H 5000 12400 60  0001 C CNN
F 4 "10 мкФ/6,3 В" V 5078 12488 50  0000 L CNN "Номинал"
F 5 "С111" H 5000 12400 50  0001 C CNN "УГО"
	1    5000 12400
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 12500 5000 12750
Wire Wire Line
	5000 12750 4250 12750
Connection ~ 5000 12750
Wire Wire Line
	5000 12350 5000 12250
Wire Wire Line
	5000 12250 4250 12250
Connection ~ 5000 12250
Wire Wire Line
	4050 12250 4250 12250
Connection ~ 4250 12250
Wire Wire Line
	4250 12750 3650 12750
Connection ~ 4250 12750
Connection ~ 3650 12750
$Comp
L elements:Конденсатор_керамический C4
U 1 1 60D5EB05
P 4500 10300
F 0 "C4" V 4500 10200 60  0000 R CNN
F 1 "Конденсатор_керамический" H 4600 10200 60  0001 C CNN
F 2 "N_RLC:Конденсатор_SMD_0603_pnp" H 4500 10300 60  0001 C CNN
F 3 "" H 4500 10300 60  0001 C CNN
F 4 "1 мкФ/25 В" V 4600 10250 50  0000 R CNN "Номинал"
F 5 "С111" H 4500 10300 50  0001 C CNN "УГО"
	1    4500 10300
	0    -1   1    0   
$EndComp
Wire Wire Line
	3875 10125 4500 10125
Connection ~ 3875 10125
Wire Wire Line
	4500 10125 4500 10250
Text Label 4750 10625 2    50   ~ 0
GND
Wire Wire Line
	4500 10400 4500 10625
$Comp
L elements:Конденсатор_керамический C5
U 1 1 60DD38A0
P 5125 10300
F 0 "C5" V 5125 10200 60  0000 R CNN
F 1 "Конденсатор_керамический" H 5225 10200 60  0001 C CNN
F 2 "N_RLC:Конденсатор_SMD_0603_pnp" H 5125 10300 60  0001 C CNN
F 3 "" H 5125 10300 60  0001 C CNN
F 4 "1 мкФ/25 В" V 5225 10250 50  0000 R CNN "Номинал"
F 5 "С111" H 5125 10300 50  0001 C CNN "УГО"
	1    5125 10300
	0    -1   1    0   
$EndComp
Wire Wire Line
	5125 10400 5125 10625
Wire Wire Line
	4500 10625 5125 10625
Wire Wire Line
	4000 9500 5125 9500
Wire Wire Line
	5125 9500 5125 10250
Connection ~ 4000 9500
$Comp
L elements:Конденсатор_керамический C6
U 1 1 60E3D74E
P 5750 10300
F 0 "C6" V 5750 10200 60  0000 R CNN
F 1 "Конденсатор_керамический" H 5850 10200 60  0001 C CNN
F 2 "N_RLC:Конденсатор_SMD_0603_pnp" H 5750 10300 60  0001 C CNN
F 3 "" H 5750 10300 60  0001 C CNN
F 4 "1 мкФ/25 В" V 5850 10250 50  0000 R CNN "Номинал"
F 5 "С111" H 5750 10300 50  0001 C CNN "УГО"
	1    5750 10300
	0    -1   1    0   
$EndComp
Connection ~ 5125 10625
Wire Wire Line
	5750 10625 5750 10400
Wire Wire Line
	5125 10625 5750 10625
Wire Wire Line
	4125 8875 5750 8875
Wire Wire Line
	5750 8875 5750 10250
Wire Bus Line
	14500 1500 14500 4750
Wire Bus Line
	11500 1500 11500 15000
Wire Bus Line
	6500 1500 6500 15000
Wire Bus Line
	1250 1500 1250 11750
Connection ~ 4125 8875
$EndSCHEMATC
