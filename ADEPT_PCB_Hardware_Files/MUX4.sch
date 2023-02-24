EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 57
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
L MAX14753EUE+:MAX14753EUE+ IC?
U 1 1 607DC5A5
P 4600 2800
AR Path="/60A37CB6/607DC5A5" Ref="IC?"  Part="1" 
AR Path="/60A37CB6/607CE85F/607DC5A5" Ref="IC?"  Part="1" 
AR Path="/60A37CB6/607D998D/607DC5A5" Ref="IC?"  Part="1" 
AR Path="/60A37CB6/607D9B55/607DC5A5" Ref="IC?"  Part="1" 
AR Path="/60A37CB6/607D9C9C/607DC5A5" Ref="IC5"  Part="1" 
AR Path="/60A37CB6/607D9DCF/607DC5A5" Ref="IC?"  Part="1" 
AR Path="/60A37CB6/607D9F2A/607DC5A5" Ref="IC?"  Part="1" 
F 0 "IC5" H 5150 3065 50  0000 C CNN
F 1 "MAX14753EUE+" H 5150 2974 50  0000 C CNN
F 2 "circuit_DEP:SOP65P640X110-16N" H 5550 2900 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/MAX14753EUE+.pdf" H 5550 2800 50  0001 L CNN
F 4 "Analog Multiplexer Dual 4:1 72V TSSOP16 Maxim MAX14753EUE+, Multiplexer Dual 4:1, 16-Pin TSSOP" H 5550 2700 50  0001 L CNN "Description"
F 5 "1.1" H 5550 2600 50  0001 L CNN "Height"
F 6 "Maxim Integrated" H 5550 2500 50  0001 L CNN "Manufacturer_Name"
F 7 "MAX14753EUE+" H 5550 2400 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "700-MAX14753EUE" H 5550 2300 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Maxim-Integrated/MAX14753EUE%2b?qs=LHmEVA8xxfZc3lXfo5YKEw%3D%3D" H 5550 2200 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 5550 2100 50  0001 L CNN "Arrow Part Number"
F 11 "" H 5550 2000 50  0001 L CNN "Arrow Price/Stock"
	1    4600 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 607DC327
P 8600 4700
AR Path="/60A37CB6/607DC327" Ref="C?"  Part="1" 
AR Path="/60A37CB6/607CE85F/607DC327" Ref="C?"  Part="1" 
AR Path="/60A37CB6/607D998D/607DC327" Ref="C?"  Part="1" 
AR Path="/60A37CB6/607D9B55/607DC327" Ref="C?"  Part="1" 
AR Path="/60A37CB6/607D9C9C/607DC327" Ref="C10"  Part="1" 
AR Path="/60A37CB6/607D9DCF/607DC327" Ref="C?"  Part="1" 
AR Path="/60A37CB6/607D9F2A/607DC327" Ref="C?"  Part="1" 
F 0 "C10" H 8715 4746 50  0000 L CNN
F 1 "10nF" H 8715 4655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 8638 4550 50  0001 C CNN
F 3 "~" H 8600 4700 50  0001 C CNN
	1    8600 4700
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 607DC63E
P 8600 4500
AR Path="/60A37CB6/607DC63E" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607CE85F/607DC63E" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D998D/607DC63E" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D9B55/607DC63E" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D9C9C/607DC63E" Ref="#PWR0159"  Part="1" 
AR Path="/60A37CB6/607D9DCF/607DC63E" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D9F2A/607DC63E" Ref="#PWR?"  Part="1" 
F 0 "#PWR0159" H 8600 4350 50  0001 C CNN
F 1 "+12V" H 8615 4673 50  0000 C CNN
F 2 "" H 8600 4500 50  0001 C CNN
F 3 "" H 8600 4500 50  0001 C CNN
	1    8600 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 607DC63C
P 8600 4950
AR Path="/60A37CB6/607DC63C" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607CE85F/607DC63C" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D998D/607DC63C" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D9B55/607DC63C" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D9C9C/607DC63C" Ref="#PWR0160"  Part="1" 
AR Path="/60A37CB6/607D9DCF/607DC63C" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D9F2A/607DC63C" Ref="#PWR?"  Part="1" 
F 0 "#PWR0160" H 8600 4700 50  0001 C CNN
F 1 "GND" H 8605 4777 50  0000 C CNN
F 2 "" H 8600 4950 50  0001 C CNN
F 3 "" H 8600 4950 50  0001 C CNN
	1    8600 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 4500 8600 4550
Wire Wire Line
	8600 4850 8600 4950
$Comp
L Device:C C?
U 1 1 607DC5A8
P 7850 4700
AR Path="/60A37CB6/607DC5A8" Ref="C?"  Part="1" 
AR Path="/60A37CB6/607CE85F/607DC5A8" Ref="C?"  Part="1" 
AR Path="/60A37CB6/607D998D/607DC5A8" Ref="C?"  Part="1" 
AR Path="/60A37CB6/607D9B55/607DC5A8" Ref="C?"  Part="1" 
AR Path="/60A37CB6/607D9C9C/607DC5A8" Ref="C9"  Part="1" 
AR Path="/60A37CB6/607D9DCF/607DC5A8" Ref="C?"  Part="1" 
AR Path="/60A37CB6/607D9F2A/607DC5A8" Ref="C?"  Part="1" 
F 0 "C9" H 7965 4746 50  0000 L CNN
F 1 "10nF" H 7965 4655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 7888 4550 50  0001 C CNN
F 3 "~" H 7850 4700 50  0001 C CNN
	1    7850 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 607DC5A9
P 7850 4950
AR Path="/60A37CB6/607DC5A9" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607CE85F/607DC5A9" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D998D/607DC5A9" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D9B55/607DC5A9" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D9C9C/607DC5A9" Ref="#PWR0161"  Part="1" 
AR Path="/60A37CB6/607D9DCF/607DC5A9" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D9F2A/607DC5A9" Ref="#PWR?"  Part="1" 
F 0 "#PWR0161" H 7850 4700 50  0001 C CNN
F 1 "GND" H 7855 4777 50  0000 C CNN
F 2 "" H 7850 4950 50  0001 C CNN
F 3 "" H 7850 4950 50  0001 C CNN
	1    7850 4950
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR?
U 1 1 607DC32C
P 7850 4450
AR Path="/60A37CB6/607CE85F/607DC32C" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D998D/607DC32C" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D9B55/607DC32C" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D9C9C/607DC32C" Ref="#PWR0162"  Part="1" 
AR Path="/60A37CB6/607D9DCF/607DC32C" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D9F2A/607DC32C" Ref="#PWR?"  Part="1" 
F 0 "#PWR0162" H 7850 4550 50  0001 C CNN
F 1 "-12V" H 7865 4623 50  0000 C CNN
F 2 "" H 7850 4450 50  0001 C CNN
F 3 "" H 7850 4450 50  0001 C CNN
	1    7850 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 4450 7850 4550
Wire Wire Line
	7850 4850 7850 4950
$Comp
L power:-12V #PWR?
U 1 1 607DC32D
P 4600 3000
AR Path="/60A37CB6/607CE85F/607DC32D" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D998D/607DC32D" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D9B55/607DC32D" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D9C9C/607DC32D" Ref="#PWR0163"  Part="1" 
AR Path="/60A37CB6/607D9DCF/607DC32D" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D9F2A/607DC32D" Ref="#PWR?"  Part="1" 
F 0 "#PWR0163" H 4600 3100 50  0001 C CNN
F 1 "-12V" V 4615 3128 50  0000 L CNN
F 2 "" H 4600 3000 50  0001 C CNN
F 3 "" H 4600 3000 50  0001 C CNN
	1    4600 3000
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 607DC5AC
P 5700 3000
AR Path="/60A37CB6/607CE85F/607DC5AC" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D998D/607DC5AC" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D9B55/607DC5AC" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D9C9C/607DC5AC" Ref="#PWR0164"  Part="1" 
AR Path="/60A37CB6/607D9DCF/607DC5AC" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D9F2A/607DC5AC" Ref="#PWR?"  Part="1" 
F 0 "#PWR0164" H 5700 2850 50  0001 C CNN
F 1 "+12V" V 5715 3128 50  0000 L CNN
F 2 "" H 5700 3000 50  0001 C CNN
F 3 "" H 5700 3000 50  0001 C CNN
	1    5700 3000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 607DC5AD
P 5700 2900
AR Path="/60A37CB6/607CE85F/607DC5AD" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D998D/607DC5AD" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D9B55/607DC5AD" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D9C9C/607DC5AD" Ref="#PWR0165"  Part="1" 
AR Path="/60A37CB6/607D9DCF/607DC5AD" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D9F2A/607DC5AD" Ref="#PWR?"  Part="1" 
F 0 "#PWR0165" H 5700 2650 50  0001 C CNN
F 1 "GND" V 5705 2772 50  0000 R CNN
F 2 "" H 5700 2900 50  0001 C CNN
F 3 "" H 5700 2900 50  0001 C CNN
	1    5700 2900
	0    -1   -1   0   
$EndComp
Text GLabel 4500 2800 0    50   Input ~ 0
MUX4.1
Wire Wire Line
	4500 2800 4600 2800
$Comp
L power:GND #PWR?
U 1 1 607DC5A4
P 5700 3100
AR Path="/60A37CB6/607CE85F/607DC5A4" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D998D/607DC5A4" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D9B55/607DC5A4" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D9C9C/607DC5A4" Ref="#PWR0166"  Part="1" 
AR Path="/60A37CB6/607D9DCF/607DC5A4" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D9F2A/607DC5A4" Ref="#PWR?"  Part="1" 
F 0 "#PWR0166" H 5700 2850 50  0001 C CNN
F 1 "GND" V 5705 2972 50  0000 R CNN
F 2 "" H 5700 3100 50  0001 C CNN
F 3 "" H 5700 3100 50  0001 C CNN
	1    5700 3100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 607DC5AE
P 5700 3200
AR Path="/60A37CB6/607CE85F/607DC5AE" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D998D/607DC5AE" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D9B55/607DC5AE" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D9C9C/607DC5AE" Ref="#PWR0167"  Part="1" 
AR Path="/60A37CB6/607D9DCF/607DC5AE" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D9F2A/607DC5AE" Ref="#PWR?"  Part="1" 
F 0 "#PWR0167" H 5700 2950 50  0001 C CNN
F 1 "GND" V 5705 3072 50  0000 R CNN
F 2 "" H 5700 3200 50  0001 C CNN
F 3 "" H 5700 3200 50  0001 C CNN
	1    5700 3200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 607DC63D
P 5700 3300
AR Path="/60A37CB6/607CE85F/607DC63D" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D998D/607DC63D" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D9B55/607DC63D" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D9C9C/607DC63D" Ref="#PWR0168"  Part="1" 
AR Path="/60A37CB6/607D9DCF/607DC63D" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D9F2A/607DC63D" Ref="#PWR?"  Part="1" 
F 0 "#PWR0168" H 5700 3050 50  0001 C CNN
F 1 "GND" V 5705 3172 50  0000 R CNN
F 2 "" H 5700 3300 50  0001 C CNN
F 3 "" H 5700 3300 50  0001 C CNN
	1    5700 3300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 607DC333
P 5700 3400
AR Path="/60A37CB6/607CE85F/607DC333" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D998D/607DC333" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D9B55/607DC333" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D9C9C/607DC333" Ref="#PWR0169"  Part="1" 
AR Path="/60A37CB6/607D9DCF/607DC333" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D9F2A/607DC333" Ref="#PWR?"  Part="1" 
F 0 "#PWR0169" H 5700 3150 50  0001 C CNN
F 1 "GND" V 5705 3272 50  0000 R CNN
F 2 "" H 5700 3400 50  0001 C CNN
F 3 "" H 5700 3400 50  0001 C CNN
	1    5700 3400
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 607DC5B1
P 4600 2900
AR Path="/60A37CB6/607CE85F/607DC5B1" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D998D/607DC5B1" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D9B55/607DC5B1" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D9C9C/607DC5B1" Ref="#PWR0170"  Part="1" 
AR Path="/60A37CB6/607D9DCF/607DC5B1" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D9F2A/607DC5B1" Ref="#PWR?"  Part="1" 
F 0 "#PWR0170" H 4600 2750 50  0001 C CNN
F 1 "+5V" V 4615 3028 50  0000 L CNN
F 2 "" H 4600 2900 50  0001 C CNN
F 3 "" H 4600 2900 50  0001 C CNN
	1    4600 2900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 607DC63F
P 4600 3100
AR Path="/60A37CB6/607CE85F/607DC63F" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D998D/607DC63F" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D9B55/607DC63F" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D9C9C/607DC63F" Ref="#PWR0171"  Part="1" 
AR Path="/60A37CB6/607D9DCF/607DC63F" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/607D9F2A/607DC63F" Ref="#PWR?"  Part="1" 
F 0 "#PWR0171" H 4600 2850 50  0001 C CNN
F 1 "GND" V 4605 2972 50  0000 R CNN
F 2 "" H 4600 3100 50  0001 C CNN
F 3 "" H 4600 3100 50  0001 C CNN
	1    4600 3100
	0    1    1    0   
$EndComp
Text HLabel 3900 3200 0    50   Input ~ 0
S1
Text HLabel 3900 3300 0    50   Input ~ 0
sum
Wire Wire Line
	3900 3200 4600 3200
Wire Wire Line
	3900 3300 4600 3300
Wire Wire Line
	4600 3500 4300 3500
Wire Wire Line
	4300 3500 4300 3700
Wire Wire Line
	4300 3700 6450 3700
Wire Wire Line
	6450 3700 6450 3350
Wire Wire Line
	6450 3350 6700 3350
Text HLabel 6700 3350 2    50   Input ~ 0
out
Text GLabel 5700 2800 2    50   Input ~ 0
MUX4.2
Text HLabel 4330 3410 0    50   Input ~ 0
S2
Wire Wire Line
	4600 3400 4330 3400
Wire Wire Line
	4330 3400 4330 3410
$EndSCHEMATC