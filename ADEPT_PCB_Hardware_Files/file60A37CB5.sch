EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 57
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
L oscilator:511JBA250M000BAG U1
U 1 1 60A3E6AF
P 1510 3180
F 0 "U1" H 1685 3255 50  0000 C CNN
F 1 "511JBA250M000BAG" H 1685 3164 50  0000 C CNN
F 2 "oscilator_511JBA250M000BAG:511JBA250M000BAG" H 1510 3180 50  0001 C CNN
F 3 "" H 1510 3180 50  0001 C CNN
	1    1510 3180
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR0118
U 1 1 6078CFFD
P 2110 3330
F 0 "#PWR0118" H 2110 3180 50  0001 C CNN
F 1 "+1V8" H 2125 3503 50  0000 C CNN
F 2 "" H 2110 3330 50  0001 C CNN
F 3 "" H 2110 3330 50  0001 C CNN
	1    2110 3330
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1.1
U 1 1 60790297
P 2360 3180
F 0 "C1.1" H 2475 3226 50  0000 L CNN
F 1 "1uF" H 2475 3135 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 2398 3030 50  0001 C CNN
F 3 "~" H 2360 3180 50  0001 C CNN
	1    2360 3180
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1.2
U 1 1 60791321
P 2710 3180
F 0 "C1.2" H 2825 3226 50  0000 L CNN
F 1 "0.1uF" H 2825 3135 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 2748 3030 50  0001 C CNN
F 3 "~" H 2710 3180 50  0001 C CNN
	1    2710 3180
	1    0    0    -1  
$EndComp
Wire Wire Line
	2060 3330 2110 3330
Wire Wire Line
	2360 3330 2710 3330
Connection ~ 2360 3330
Wire Wire Line
	2710 3030 2360 3030
Wire Wire Line
	2360 2980 2360 3030
Connection ~ 2360 3030
Wire Wire Line
	1310 3530 1060 3530
Wire Wire Line
	1060 3530 1060 3630
$Comp
L power:GND #PWR0119
U 1 1 60791EB8
P 1060 3630
F 0 "#PWR0119" H 1060 3380 50  0001 C CNN
F 1 "GND" H 1065 3457 50  0000 C CNN
F 2 "" H 1060 3630 50  0001 C CNN
F 3 "" H 1060 3630 50  0001 C CNN
	1    1060 3630
	1    0    0    -1  
$EndComp
Text GLabel 2750 3420 2    50   Input ~ 0
CLK+
Text GLabel 2750 3520 2    50   Input ~ 0
CLK-
Wire Wire Line
	2060 3530 2210 3530
Wire Wire Line
	1310 3330 960  3330
Text GLabel 960  3330 0    50   Input ~ 0
CLKenable
$Sheet
S 9100 2350 550  350 
U 607D998D
F0 "MUX2" 50
F1 "MUX2.sch" 50
F2 "S1" I L 9100 2400 50 
F3 "sum" I L 9100 2500 50 
F4 "S2" I L 9100 2600 50 
F5 "out" I R 9650 2500 50 
$EndSheet
$Sheet
S 9100 1650 550  350 
U 607CE85F
F0 "MUX1" 50
F1 "MUX1.sch" 50
F2 "S1" I L 9100 1700 50 
F3 "sum" I L 9100 1800 50 
F4 "S2" I L 9100 1900 50 
F5 "out" I R 9650 1800 50 
$EndSheet
$Sheet
S 9100 2900 550  350 
U 607D9B55
F0 "MUX3" 50
F1 "MUX.sch" 50
F2 "S1" I L 9100 2950 50 
F3 "sum" I L 9100 3050 50 
F4 "S2" I L 9100 3150 50 
F5 "out" I R 9650 3050 50 
$EndSheet
$Sheet
S 9100 3500 550  350 
U 607D9C9C
F0 "MUX4" 50
F1 "MUX4.sch" 50
F2 "S1" I L 9100 3550 50 
F3 "sum" I L 9100 3650 50 
F4 "S2" I L 9100 3750 50 
F5 "out" I R 9650 3650 50 
$EndSheet
$Sheet
S 9100 4100 550  350 
U 607D9DCF
F0 "MUX5" 50
F1 "MUX5.sch" 50
F2 "S1" I L 9100 4150 50 
F3 "sum" I L 9100 4250 50 
F4 "S2" I L 9100 4350 50 
F5 "out" I R 9650 4250 50 
$EndSheet
$Sheet
S 9100 4700 550  350 
U 607D9F2A
F0 "MUX6" 50
F1 "MUX6.sch" 50
F2 "S1" I L 9100 4750 50 
F3 "sum" I L 9100 4850 50 
F4 "S2" I L 9100 4950 50 
F5 "out" I R 9650 4850 50 
$EndSheet
$Comp
L Connector:Conn_01x06_Male J3
U 1 1 607DE832
P 10650 3350
F 0 "J3" H 10622 3232 50  0000 R CNN
F 1 "Conn_01x06_Male" H 10800 3700 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x06_P1.27mm_Vertical" H 10650 3350 50  0001 C CNN
F 3 "~" H 10650 3350 50  0001 C CNN
	1    10650 3350
	-1   0    0    1   
$EndComp
Wire Wire Line
	9650 1800 10450 1800
Wire Wire Line
	10450 1800 10450 3050
Wire Wire Line
	9650 2500 10350 2500
Wire Wire Line
	10350 2500 10350 3150
Wire Wire Line
	10350 3150 10450 3150
Wire Wire Line
	9650 3050 10250 3050
Wire Wire Line
	10250 3050 10250 3250
Wire Wire Line
	10250 3250 10450 3250
Wire Wire Line
	9650 3650 10100 3650
Wire Wire Line
	10100 3650 10100 3350
Wire Wire Line
	10100 3350 10450 3350
Wire Wire Line
	9650 4250 10250 4250
Wire Wire Line
	10250 4250 10250 3450
Wire Wire Line
	10250 3450 10450 3450
Wire Wire Line
	9650 4850 10400 4850
Wire Wire Line
	10400 4850 10400 3550
Wire Wire Line
	10400 3550 10450 3550
$Sheet
S 7300 1650 950  300 
U 607C14DF
F0 "SUM1" 50
F1 "SUM1.sch" 50
F2 "sum1" I L 7300 1700 50 
F3 "sum2" I L 7300 1900 50 
F4 "out" I R 8250 1800 50 
$EndSheet
$Sheet
S 7300 2350 950  300 
U 607E2B28
F0 "SUM2" 50
F1 "SUM2.sch" 50
F2 "sum1" I L 7300 2400 50 
F3 "sum2" I L 7300 2600 50 
F4 "out" I R 8250 2500 50 
$EndSheet
$Sheet
S 7300 2900 950  300 
U 607E2E3B
F0 "SUM3" 50
F1 "SUM3.sch" 50
F2 "sum1" I L 7300 2950 50 
F3 "sum2" I L 7300 3150 50 
F4 "out" I R 8250 3050 50 
$EndSheet
$Sheet
S 7300 3500 950  300 
U 607E3176
F0 "SUM4" 50
F1 "SUM4.sch" 50
F2 "sum1" I L 7300 3550 50 
F3 "sum2" I L 7300 3750 50 
F4 "out" I R 8250 3650 50 
$EndSheet
$Sheet
S 7300 4100 950  300 
U 607E34C5
F0 "SUM5" 50
F1 "SUM5.sch" 50
F2 "sum1" I L 7300 4150 50 
F3 "sum2" I L 7300 4350 50 
F4 "out" I R 8250 4250 50 
$EndSheet
$Sheet
S 7300 4700 950  300 
U 607E37A4
F0 "SUM6" 50
F1 "SUM6.sch" 50
F2 "sum1" I L 7300 4750 50 
F3 "sum2" I L 7300 4950 50 
F4 "out" I R 8250 4850 50 
$EndSheet
Wire Wire Line
	9100 2500 8250 2500
Wire Wire Line
	8250 3050 9100 3050
Wire Wire Line
	8250 3650 9100 3650
Wire Wire Line
	8250 4250 9100 4250
Wire Wire Line
	9100 4850 8250 4850
Wire Wire Line
	8250 1800 9100 1800
$Sheet
S 3180 820  500  350 
U 60792703
F0 "SG1.1" 50
F1 "SG1.1.sch" 50
F2 "Iout" I R 3680 920 50 
F3 "~Iout" I R 3680 1070 50 
$EndSheet
$Sheet
S 4900 850  550  300 
U 607A2442
F0 "AM1.1" 50
F1 "AM1.1.sch" 50
F2 "out" I R 5450 1050 50 
F3 "in1" I L 4900 950 50 
$EndSheet
Wire Wire Line
	9100 1700 8600 1700
Wire Wire Line
	8600 1700 8600 1350
Wire Wire Line
	8600 1350 7050 1350
Wire Wire Line
	7050 1350 7050 1700
Wire Wire Line
	7050 1700 7300 1700
Wire Wire Line
	7050 1700 6600 1700
Connection ~ 7050 1700
Wire Wire Line
	9100 2400 8600 2400
Wire Wire Line
	8600 2400 8600 2200
Wire Wire Line
	8600 2200 7050 2200
Wire Wire Line
	7050 2200 7050 2400
Wire Wire Line
	7050 2400 7300 2400
Wire Wire Line
	7050 2400 6600 2400
Connection ~ 7050 2400
Wire Wire Line
	9100 2950 8600 2950
Wire Wire Line
	8600 2950 8600 2800
Wire Wire Line
	8600 2800 7050 2800
Wire Wire Line
	7050 2800 7050 2950
Wire Wire Line
	7050 2950 7300 2950
Connection ~ 7050 2950
Wire Wire Line
	9100 3550 8600 3550
Wire Wire Line
	8600 3550 8600 3400
Wire Wire Line
	8600 3400 7050 3400
Wire Wire Line
	7050 3400 7050 3550
Wire Wire Line
	7050 3550 7300 3550
Connection ~ 7050 3550
Wire Wire Line
	9100 4150 8600 4150
Wire Wire Line
	8600 4150 8600 4000
Wire Wire Line
	8600 4000 7050 4000
Wire Wire Line
	7050 4000 7050 4150
Wire Wire Line
	7050 4150 7300 4150
Connection ~ 7050 4150
Wire Wire Line
	9100 4750 8600 4750
Wire Wire Line
	8600 4750 8600 4550
Wire Wire Line
	8600 4550 7050 4550
Wire Wire Line
	7050 4550 7050 4750
Wire Wire Line
	7050 4750 7300 4750
Connection ~ 7050 4750
$Sheet
S 3180 1370 500  350 
U 608420A6
F0 "SG1.2" 50
F1 "SG1.2.sch" 50
F2 "Iout" I R 3680 1470 50 
F3 "~Iout" I R 3680 1620 50 
$EndSheet
$Sheet
S 3180 1920 500  350 
U 6084C764
F0 "SG2.1" 50
F1 "SG2.1.sch" 50
F2 "Iout" I R 3680 2020 50 
F3 "~Iout" I R 3680 2170 50 
$EndSheet
$Sheet
S 3180 2470 500  350 
U 6084C768
F0 "SG2.2" 50
F1 "SG2.2.sch" 50
F2 "Iout" I R 3680 2570 50 
F3 "~Iout" I R 3680 2720 50 
$EndSheet
$Sheet
S 3180 3020 500  350 
U 608502F9
F0 "SG3.1" 50
F1 "SG3.1.sch" 50
F2 "Iout" I R 3680 3120 50 
F3 "~Iout" I R 3680 3270 50 
$EndSheet
$Sheet
S 3180 3570 500  350 
U 608502FD
F0 "SG3.2" 50
F1 "SG3.2.sch" 50
F2 "Iout" I R 3680 3670 50 
F3 "~Iout" I R 3680 3820 50 
$EndSheet
$Sheet
S 3180 4120 500  350 
U 60850301
F0 "SG4.1" 50
F1 "SG4.1.sch" 50
F2 "Iout" I R 3680 4220 50 
F3 "~Iout" I R 3680 4370 50 
$EndSheet
$Sheet
S 3180 4670 500  350 
U 60850305
F0 "SG4.2" 50
F1 "SG4.2.sch" 50
F2 "Iout" I R 3680 4770 50 
F3 "~Iout" I R 3680 4920 50 
$EndSheet
$Sheet
S 3180 5220 500  350 
U 608540AA
F0 "SG5.1" 50
F1 "SG5.1.sch" 50
F2 "Iout" I R 3680 5320 50 
F3 "~Iout" I R 3680 5470 50 
$EndSheet
$Sheet
S 3180 5770 500  350 
U 608540AE
F0 "SG5.2" 50
F1 "SG5.2.sch" 50
F2 "Iout" I R 3680 5870 50 
F3 "~Iout" I R 3680 6020 50 
$EndSheet
$Sheet
S 3180 6320 500  350 
U 608540B2
F0 "SG6.1" 50
F1 "SG6.1.sch" 50
F2 "Iout" I R 3680 6420 50 
F3 "~Iout" I R 3680 6570 50 
$EndSheet
$Sheet
S 3180 6870 500  350 
U 608540B6
F0 "SG6.2" 50
F1 "SG6.2.sch" 50
F2 "Iout" I R 3680 6970 50 
F3 "~Iout" I R 3680 7120 50 
$EndSheet
$Sheet
S 4900 1950 550  300 
U 60863531
F0 "AM2.1" 50
F1 "AM2.1.sch" 50
F2 "out" I R 5450 2150 50 
F3 "in1" I L 4900 2050 50 
$EndSheet
$Sheet
S 4850 3050 550  300 
U 60866B14
F0 "AM3.1" 50
F1 "AM3.1.sch" 50
F2 "out" I R 5400 3250 50 
F3 "in1" I L 4850 3150 50 
$EndSheet
$Sheet
S 4850 4150 550  300 
U 6086A077
F0 "AM4.1" 50
F1 "AM4.1.sch" 50
F2 "out" I R 5400 4350 50 
F3 "in1" I L 4850 4250 50 
$EndSheet
$Sheet
S 4850 5250 550  300 
U 6086D66C
F0 "AM5.1" 50
F1 "AM5.1.sch" 50
F2 "out" I R 5400 5450 50 
F3 "in1" I L 4850 5350 50 
$EndSheet
$Sheet
S 4850 6350 550  300 
U 60870BDB
F0 "AM6.1" 50
F1 "AM6.1.sch" 50
F2 "out" I R 5400 6550 50 
F3 "in1" I L 4850 6450 50 
$EndSheet
$Sheet
S 4900 1400 550  300 
U 608BF5DE
F0 "AM1.2" 50
F1 "AM1.2.sch" 50
F2 "out" I R 5450 1600 50 
F3 "in1" I L 4900 1500 50 
$EndSheet
$Sheet
S 4900 2500 550  300 
U 608C6E9B
F0 "AM2.2" 50
F1 "AM2.2.sch" 50
F2 "out" I R 5450 2700 50 
F3 "in1" I L 4900 2600 50 
$EndSheet
$Sheet
S 4900 3600 550  300 
U 608CC010
F0 "AM3.2" 50
F1 "AM3.2.sch" 50
F2 "out" I R 5450 3800 50 
F3 "in1" I L 4900 3700 50 
$EndSheet
$Sheet
S 4900 4700 550  300 
U 608D155A
F0 "AM4.2" 50
F1 "AM4.2.sch" 50
F2 "out" I R 5450 4900 50 
F3 "in1" I L 4900 4800 50 
$EndSheet
$Sheet
S 4900 5800 550  300 
U 608D6E87
F0 "AM5.2" 50
F1 "AM5.2.sch" 50
F2 "out" I R 5450 6000 50 
F3 "in1" I L 4900 5900 50 
$EndSheet
$Sheet
S 4900 6900 550  300 
U 608DCB3F
F0 "AM6.2" 50
F1 "AM6.2.sch" 50
F2 "out" I R 5450 7100 50 
F3 "in1" I L 4900 7000 50 
$EndSheet
Wire Wire Line
	5450 1050 6600 1050
Wire Wire Line
	6600 1050 6600 1700
Wire Wire Line
	5450 1600 6450 1600
Wire Wire Line
	6450 1600 6450 1900
Wire Wire Line
	5450 2150 6600 2150
Wire Wire Line
	6600 2150 6600 2400
Wire Wire Line
	5450 2700 6600 2700
Wire Wire Line
	6600 2700 6600 2600
Wire Wire Line
	5400 3250 5900 3250
Wire Wire Line
	5900 3250 5900 2950
Wire Wire Line
	5900 2950 7050 2950
Wire Wire Line
	5450 3800 6000 3800
Wire Wire Line
	6000 3800 6000 3150
Wire Wire Line
	5400 4350 6050 4350
Wire Wire Line
	6050 4350 6050 3550
Wire Wire Line
	6050 3550 7050 3550
Wire Wire Line
	5450 4900 6150 4900
Wire Wire Line
	6150 4900 6150 3750
Wire Wire Line
	5400 5450 6200 5450
Wire Wire Line
	6200 5450 6200 4150
Wire Wire Line
	6200 4150 7050 4150
Wire Wire Line
	5450 6000 6250 6000
Wire Wire Line
	6250 6000 6250 4350
Wire Wire Line
	5400 6550 6300 6550
Wire Wire Line
	6300 6550 6300 4750
Wire Wire Line
	6300 4750 7050 4750
Wire Wire Line
	5450 7100 6600 7100
Wire Wire Line
	6600 7100 6600 4950
Connection ~ 2110 3330
Wire Wire Line
	2110 3330 2360 3330
$Comp
L power:GND #PWR0540
U 1 1 60856BA1
P 2360 2980
F 0 "#PWR0540" H 2360 2730 50  0001 C CNN
F 1 "GND" H 2365 2807 50  0000 C CNN
F 2 "" H 2360 2980 50  0001 C CNN
F 3 "" H 2360 2980 50  0001 C CNN
	1    2360 2980
	-1   0    0    1   
$EndComp
$Comp
L Device:C C1.4
U 1 1 60866240
P 2520 3430
F 0 "C1.4" H 2635 3476 50  0000 L CNN
F 1 "0.1uF" H 2635 3385 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 2558 3280 50  0001 C CNN
F 3 "~" H 2520 3430 50  0001 C CNN
	1    2520 3430
	0    1    1    0   
$EndComp
$Comp
L Device:C C1.3
U 1 1 60866517
P 2500 3740
F 0 "C1.3" H 2615 3786 50  0000 L CNN
F 1 "0.1uF" H 2615 3695 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 2538 3590 50  0001 C CNN
F 3 "~" H 2500 3740 50  0001 C CNN
	1    2500 3740
	0    1    1    0   
$EndComp
$Comp
L Device:R R22
U 1 1 60866832
P 2290 3590
F 0 "R22" H 2220 3544 50  0000 R CNN
F 1 "100" H 2220 3635 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 2220 3590 50  0001 C CNN
F 3 "~" H 2290 3590 50  0001 C CNN
	1    2290 3590
	-1   0    0    1   
$EndComp
Wire Wire Line
	2290 3430 2290 3440
Wire Wire Line
	2060 3430 2290 3430
Wire Wire Line
	2290 3430 2370 3430
Connection ~ 2290 3430
Wire Wire Line
	2670 3430 2750 3430
Wire Wire Line
	2750 3430 2750 3420
Wire Wire Line
	2210 3530 2210 3740
Wire Wire Line
	2650 3740 2650 3520
Wire Wire Line
	2650 3520 2750 3520
Wire Wire Line
	2210 3740 2290 3740
Connection ~ 2290 3740
Wire Wire Line
	2290 3740 2350 3740
$Sheet
S 4000 840  630  300 
U 60823627
F0 "preamp1" 50
F1 "preamp1.sch" 50
F2 "in1" I L 4000 920 50 
F3 "out" I R 4630 950 50 
F4 "in2" I L 4000 1070 50 
$EndSheet
Wire Wire Line
	4000 920  3680 920 
Wire Wire Line
	4900 950  4630 950 
Wire Wire Line
	3680 1070 4000 1070
Wire Wire Line
	4900 1500 4630 1500
Wire Wire Line
	3680 1470 4000 1470
Wire Wire Line
	3680 1620 4000 1620
$Sheet
S 4000 1390 630  300 
U 60897F17
F0 "preamp2" 50
F1 "preamp2.sch" 50
F2 "in1" I L 4000 1470 50 
F3 "out" I R 4630 1500 50 
F4 "in2" I L 4000 1620 50 
$EndSheet
Wire Wire Line
	4900 2050 4630 2050
Wire Wire Line
	3680 2020 4000 2020
Wire Wire Line
	3680 2170 4000 2170
Wire Wire Line
	4900 2600 4630 2600
Wire Wire Line
	3680 2570 4000 2570
Wire Wire Line
	3680 2720 4000 2720
Wire Wire Line
	3680 3120 4000 3120
Wire Wire Line
	3680 3270 4000 3270
Wire Wire Line
	4630 3150 4850 3150
$Sheet
S 4000 1940 630  300 
U 608A316B
F0 "preamp3" 50
F1 "preamp3.sch" 50
F2 "in1" I L 4000 2020 50 
F3 "out" I R 4630 2050 50 
F4 "in2" I L 4000 2170 50 
$EndSheet
$Sheet
S 4000 2490 630  300 
U 608AD491
F0 "preamp4" 50
F1 "preamp4.sch" 50
F2 "in1" I L 4000 2570 50 
F3 "out" I R 4630 2600 50 
F4 "in2" I L 4000 2720 50 
$EndSheet
$Sheet
S 4000 3040 630  300 
U 608B7A81
F0 "preamp5" 50
F1 "preamp5.sch" 50
F2 "in1" I L 4000 3120 50 
F3 "out" I R 4630 3150 50 
F4 "in2" I L 4000 3270 50 
$EndSheet
Wire Wire Line
	3680 3670 4010 3670
Wire Wire Line
	3680 3820 4010 3820
Wire Wire Line
	4640 3700 4900 3700
$Sheet
S 4010 3590 630  300 
U 608D030F
F0 "preamp6" 50
F1 "preamp6.sch" 50
F2 "in1" I L 4010 3670 50 
F3 "out" I R 4640 3700 50 
F4 "in2" I L 4010 3820 50 
$EndSheet
Wire Wire Line
	3680 4220 4010 4220
Wire Wire Line
	3680 4370 4010 4370
Wire Wire Line
	4640 4800 4900 4800
Wire Wire Line
	3680 4920 4010 4920
Wire Wire Line
	3680 4770 4010 4770
Wire Wire Line
	3680 5320 4010 5320
Wire Wire Line
	3680 5470 4010 5470
Wire Wire Line
	4640 4250 4850 4250
Wire Wire Line
	4640 5350 4850 5350
Wire Wire Line
	4640 5900 4900 5900
Wire Wire Line
	3680 5870 4010 5870
Wire Wire Line
	3680 6020 4010 6020
Wire Wire Line
	3680 6420 4010 6420
Wire Wire Line
	3680 6570 4010 6570
Wire Wire Line
	4640 7000 4900 7000
Wire Wire Line
	3680 6970 4010 6970
Wire Wire Line
	3680 7120 4010 7120
Wire Wire Line
	4640 6450 4850 6450
$Sheet
S 4010 4140 630  300 
U 608E6331
F0 "preamp7" 50
F1 "preamp7.sch" 50
F2 "in1" I L 4010 4220 50 
F3 "out" I R 4640 4250 50 
F4 "in2" I L 4010 4370 50 
$EndSheet
$Sheet
S 4010 4690 630  300 
U 608FC385
F0 "preamp8" 50
F1 "preamp8.sch" 50
F2 "in1" I L 4010 4770 50 
F3 "out" I R 4640 4800 50 
F4 "in2" I L 4010 4920 50 
$EndSheet
$Sheet
S 4010 5240 630  300 
U 609074C1
F0 "preamp9" 50
F1 "preamp9.sch" 50
F2 "in1" I L 4010 5320 50 
F3 "out" I R 4640 5350 50 
F4 "in2" I L 4010 5470 50 
$EndSheet
$Sheet
S 4010 5790 630  300 
U 60928839
F0 "preamp10" 50
F1 "preamp10.sch" 50
F2 "in1" I L 4010 5870 50 
F3 "out" I R 4640 5900 50 
F4 "in2" I L 4010 6020 50 
$EndSheet
$Sheet
S 4010 6340 630  300 
U 60933E4F
F0 "preamp11" 50
F1 "preamp11.sch" 50
F2 "in1" I L 4010 6420 50 
F3 "out" I R 4640 6450 50 
F4 "in2" I L 4010 6570 50 
$EndSheet
$Sheet
S 4010 6890 630  300 
U 6093F705
F0 "preamp12" 50
F1 "preamp12.sch" 50
F2 "in1" I L 4010 6970 50 
F3 "out" I R 4640 7000 50 
F4 "in2" I L 4010 7120 50 
$EndSheet
Wire Wire Line
	6450 1900 7300 1900
Wire Wire Line
	6600 2600 7300 2600
Wire Wire Line
	6000 3150 7300 3150
Wire Wire Line
	6150 3750 7300 3750
Wire Wire Line
	6250 4350 7300 4350
Wire Wire Line
	6600 4950 7300 4950
$Sheet
S 8420 1920 500  150 
U 60827CF6
F0 "DC1" 50
F1 "DC1.sch" 50
F2 "out" I R 8920 1990 50 
$EndSheet
Wire Wire Line
	9100 1900 8980 1900
Wire Wire Line
	8980 1900 8980 1990
Wire Wire Line
	8980 1990 8920 1990
Wire Wire Line
	9100 2600 8980 2600
Wire Wire Line
	8980 2600 8980 2690
Wire Wire Line
	8980 2690 8920 2690
Wire Wire Line
	9100 3150 8980 3150
Wire Wire Line
	8980 3150 8980 3240
Wire Wire Line
	8980 3240 8920 3240
Wire Wire Line
	9100 3750 8980 3750
Wire Wire Line
	8980 3750 8980 3840
Wire Wire Line
	8980 3840 8920 3840
Wire Wire Line
	8970 4350 8970 4440
Wire Wire Line
	8970 4440 8910 4440
Wire Wire Line
	8970 4350 9100 4350
Wire Wire Line
	9100 4950 8980 4950
Wire Wire Line
	8980 4950 8980 5040
Wire Wire Line
	8980 5040 8920 5040
$Sheet
S 8420 2620 500  150 
U 608398F6
F0 "DC2" 50
F1 "DC2.sch" 50
F2 "out" I R 8920 2690 50 
$EndSheet
$Sheet
S 8420 3170 500  150 
U 60841D63
F0 "DC3" 50
F1 "DC3.sch" 50
F2 "out" I R 8920 3240 50 
$EndSheet
$Sheet
S 8420 3770 500  150 
U 6084A52C
F0 "DC4" 50
F1 "DC4.sch" 50
F2 "out" I R 8920 3840 50 
$EndSheet
$Sheet
S 8410 4370 500  150 
U 60853070
F0 "DC5" 50
F1 "DC5.sch" 50
F2 "out" I R 8910 4440 50 
$EndSheet
$Sheet
S 8420 4970 500  150 
U 608650C3
F0 "DC6" 50
F1 "DC6.sch" 50
F2 "out" I R 8920 5040 50 
$EndSheet
$EndSCHEMATC
