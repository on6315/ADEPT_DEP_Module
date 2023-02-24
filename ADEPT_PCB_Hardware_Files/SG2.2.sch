EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 19 57
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
L AD9913BCPZ:AD9913BCPZ IC?
U 1 1 6080C527
P 4800 3450
AR Path="/60A37CB6/60792703/6080C527" Ref="IC?"  Part="1" 
AR Path="/60A37CB6/608420A6/6080C527" Ref="IC?"  Part="1" 
AR Path="/60A37CB6/6084C764/6080C527" Ref="IC?"  Part="1" 
AR Path="/60A37CB6/608502F9/6080C527" Ref="IC?"  Part="1" 
AR Path="/60A37CB6/6084C768/6080C527" Ref="IC20"  Part="1" 
F 0 "IC20" H 7550 3250 50  0000 L CNN
F 1 "AD9913BCPZ" H 7550 3150 50  0000 L CNN
F 2 "circuit_DEP:QFN50P500X500X100-33N" H 6250 4250 50  0001 L CNN
F 3 "http://docs-emea.rs-online.com/webdocs/0e3a/0900766b80e3aad4.pdf" H 6250 4150 50  0001 L CNN
F 4 "AD9913BCPZ, Direct Digital Synthesizer 10 bit-Bit 250Msps, 32-Pin LFCSP" H 6250 4050 50  0001 L CNN "Description"
F 5 "1" H 6250 3950 50  0001 L CNN "Height"
F 6 "Analog Devices" H 6250 3850 50  0001 L CNN "Manufacturer_Name"
F 7 "AD9913BCPZ" H 6250 3750 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "584-AD9913BCPZ" H 6250 3650 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.com/Search/Refine.aspx?Keyword=584-AD9913BCPZ" H 6250 3550 50  0001 L CNN "Mouser Price/Stock"
F 10 "AD9913BCPZ" H 6250 3450 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/ad9913bcpz/analog-devices" H 6250 3350 50  0001 L CNN "Arrow Price/Stock"
	1    4800 3450
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR?
U 1 1 6080C52D
P 3950 3750
AR Path="/60A37CB6/60792703/6080C52D" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608420A6/6080C52D" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C764/6080C52D" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608502F9/6080C52D" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C768/6080C52D" Ref="#PWR0297"  Part="1" 
F 0 "#PWR0297" H 3950 3600 50  0001 C CNN
F 1 "+1V8" H 3965 3923 50  0000 C CNN
F 2 "" H 3950 3750 50  0001 C CNN
F 3 "" H 3950 3750 50  0001 C CNN
	1    3950 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3750 3950 3750
$Comp
L power:GND #PWR?
U 1 1 6080C534
P 3950 4050
AR Path="/60A37CB6/60792703/6080C534" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608420A6/6080C534" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C764/6080C534" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608502F9/6080C534" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C768/6080C534" Ref="#PWR0298"  Part="1" 
F 0 "#PWR0298" H 3950 3800 50  0001 C CNN
F 1 "GND" H 3955 3877 50  0000 C CNN
F 2 "" H 3950 4050 50  0001 C CNN
F 3 "" H 3950 4050 50  0001 C CNN
	1    3950 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3850 4250 3850
Wire Wire Line
	4250 3850 4250 4050
Wire Wire Line
	4250 4050 3950 4050
$Comp
L power:GND #PWR?
U 1 1 6080C53D
P 6600 4450
AR Path="/60A37CB6/60792703/6080C53D" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608420A6/6080C53D" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C764/6080C53D" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608502F9/6080C53D" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C768/6080C53D" Ref="#PWR0299"  Part="1" 
F 0 "#PWR0299" H 6600 4200 50  0001 C CNN
F 1 "GND" H 6605 4277 50  0000 C CNN
F 2 "" H 6600 4450 50  0001 C CNN
F 3 "" H 6600 4450 50  0001 C CNN
	1    6600 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6080C543
P 7150 4300
AR Path="/60A37CB6/60792703/6080C543" Ref="C?"  Part="1" 
AR Path="/60A37CB6/608420A6/6080C543" Ref="C?"  Part="1" 
AR Path="/60A37CB6/6084C764/6080C543" Ref="C?"  Part="1" 
AR Path="/60A37CB6/608502F9/6080C543" Ref="C?"  Part="1" 
AR Path="/60A37CB6/6084C768/6080C543" Ref="C41"  Part="1" 
F 0 "C41" H 7265 4346 50  0000 L CNN
F 1 "0.1uF" H 7265 4255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 7188 4150 50  0001 C CNN
F 3 "~" H 7150 4300 50  0001 C CNN
	1    7150 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 4450 7150 4450
$Comp
L power:GND #PWR?
U 1 1 6080C54A
P 6400 4050
AR Path="/60A37CB6/60792703/6080C54A" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608420A6/6080C54A" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C764/6080C54A" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608502F9/6080C54A" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C768/6080C54A" Ref="#PWR0300"  Part="1" 
F 0 "#PWR0300" H 6400 3800 50  0001 C CNN
F 1 "GND" H 6405 3877 50  0000 C CNN
F 2 "" H 6400 4050 50  0001 C CNN
F 3 "" H 6400 4050 50  0001 C CNN
	1    6400 4050
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6080C550
P 6400 3750
AR Path="/60A37CB6/60792703/6080C550" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608420A6/6080C550" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C764/6080C550" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608502F9/6080C550" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C768/6080C550" Ref="#PWR0301"  Part="1" 
F 0 "#PWR0301" H 6400 3500 50  0001 C CNN
F 1 "GND" H 6405 3577 50  0000 C CNN
F 2 "" H 6400 3750 50  0001 C CNN
F 3 "" H 6400 3750 50  0001 C CNN
	1    6400 3750
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6080C556
P 6400 3550
AR Path="/60A37CB6/60792703/6080C556" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608420A6/6080C556" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C764/6080C556" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608502F9/6080C556" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C768/6080C556" Ref="#PWR0302"  Part="1" 
F 0 "#PWR0302" H 6400 3300 50  0001 C CNN
F 1 "GND" H 6405 3377 50  0000 C CNN
F 2 "" H 6400 3550 50  0001 C CNN
F 3 "" H 6400 3550 50  0001 C CNN
	1    6400 3550
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6080C55C
P 7000 3450
AR Path="/60A37CB6/60792703/6080C55C" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608420A6/6080C55C" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C764/6080C55C" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608502F9/6080C55C" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C768/6080C55C" Ref="#PWR0303"  Part="1" 
F 0 "#PWR0303" H 7000 3200 50  0001 C CNN
F 1 "GND" H 7005 3277 50  0000 C CNN
F 2 "" H 7000 3450 50  0001 C CNN
F 3 "" H 7000 3450 50  0001 C CNN
	1    7000 3450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 6080C562
P 6850 3450
AR Path="/60A37CB6/60792703/6080C562" Ref="R?"  Part="1" 
AR Path="/60A37CB6/608420A6/6080C562" Ref="R?"  Part="1" 
AR Path="/60A37CB6/6084C764/6080C562" Ref="R?"  Part="1" 
AR Path="/60A37CB6/608502F9/6080C562" Ref="R?"  Part="1" 
AR Path="/60A37CB6/6084C768/6080C562" Ref="R31"  Part="1" 
F 0 "R31" V 6643 3450 50  0000 C CNN
F 1 "4.64k" V 6734 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 6780 3450 50  0001 C CNN
F 3 "~" H 6850 3450 50  0001 C CNN
	1    6850 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	6400 3450 6700 3450
Wire Wire Line
	6800 3650 6400 3650
$Comp
L power:GND #PWR?
U 1 1 6080C56A
P 6050 5300
AR Path="/60A37CB6/60792703/6080C56A" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608420A6/6080C56A" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C764/6080C56A" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608502F9/6080C56A" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C768/6080C56A" Ref="#PWR0304"  Part="1" 
F 0 "#PWR0304" H 6050 5050 50  0001 C CNN
F 1 "GND" H 6055 5127 50  0000 C CNN
F 2 "" H 6050 5300 50  0001 C CNN
F 3 "" H 6050 5300 50  0001 C CNN
	1    6050 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 5000 5900 4950
Wire Wire Line
	5800 4950 5800 5300
Wire Wire Line
	5800 5300 6050 5300
Text GLabel 5500 2150 1    50   Input ~ 0
1.8SCLK
Wire Wire Line
	5500 2450 5500 2150
Text GLabel 5600 2150 1    50   Input ~ 0
1.8MOSI
Wire Wire Line
	5600 2450 5600 2150
Wire Wire Line
	5700 2450 5700 2150
$Comp
L power:GND #PWR?
U 1 1 6080C578
P 5200 2450
AR Path="/60A37CB6/60792703/6080C578" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608420A6/6080C578" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C764/6080C578" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608502F9/6080C578" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C768/6080C578" Ref="#PWR0305"  Part="1" 
F 0 "#PWR0305" H 5200 2200 50  0001 C CNN
F 1 "GND" H 5205 2277 50  0000 C CNN
F 2 "" H 5200 2450 50  0001 C CNN
F 3 "" H 5200 2450 50  0001 C CNN
	1    5200 2450
	-1   0    0    1   
$EndComp
Text GLabel 5800 2150 1    50   Input ~ 0
Global_IO_update
Wire Wire Line
	5800 2450 5800 2150
Wire Wire Line
	5300 4950 5300 5050
Wire Wire Line
	5500 5000 5500 4950
Wire Wire Line
	5500 5000 5900 5000
Connection ~ 5900 5000
Wire Wire Line
	5900 5000 6050 5000
$Comp
L power:GND #PWR?
U 1 1 6080C585
P 5300 5150
AR Path="/60A37CB6/60792703/6080C585" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608420A6/6080C585" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C764/6080C585" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608502F9/6080C585" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C768/6080C585" Ref="#PWR0306"  Part="1" 
F 0 "#PWR0306" H 5300 4900 50  0001 C CNN
F 1 "GND" H 5305 4977 50  0000 C CNN
F 2 "" H 5300 5150 50  0001 C CNN
F 3 "" H 5300 5150 50  0001 C CNN
	1    5300 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4950 5400 5050
Wire Wire Line
	5400 5050 5300 5050
Connection ~ 5300 5050
Wire Wire Line
	5300 5050 5300 5150
Wire Wire Line
	5600 4950 5600 5450
Wire Wire Line
	5700 4950 5700 5450
Text GLabel 5600 5450 3    50   Input ~ 0
CLK+
Text GLabel 5700 5450 3    50   Input ~ 0
CLK-
Wire Wire Line
	6400 3850 8200 3850
Wire Wire Line
	6400 3950 8200 3950
$Comp
L Device:R R?
U 1 1 6080C59B
P 8550 3650
AR Path="/60A37CB6/60792703/6080C59B" Ref="R?"  Part="1" 
AR Path="/60A37CB6/608420A6/6080C59B" Ref="R?"  Part="1" 
AR Path="/60A37CB6/6084C764/6080C59B" Ref="R?"  Part="1" 
AR Path="/60A37CB6/608502F9/6080C59B" Ref="R?"  Part="1" 
AR Path="/60A37CB6/6084C768/6080C59B" Ref="R32"  Part="1" 
F 0 "R32" H 8620 3696 50  0000 L CNN
F 1 "50" H 8620 3605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8480 3650 50  0001 C CNN
F 3 "~" H 8550 3650 50  0001 C CNN
	1    8550 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6080C5A1
P 8550 4100
AR Path="/60A37CB6/60792703/6080C5A1" Ref="R?"  Part="1" 
AR Path="/60A37CB6/608420A6/6080C5A1" Ref="R?"  Part="1" 
AR Path="/60A37CB6/6084C764/6080C5A1" Ref="R?"  Part="1" 
AR Path="/60A37CB6/608502F9/6080C5A1" Ref="R?"  Part="1" 
AR Path="/60A37CB6/6084C768/6080C5A1" Ref="R33"  Part="1" 
F 0 "R33" H 8620 4146 50  0000 L CNN
F 1 "50" H 8620 4055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8480 4100 50  0001 C CNN
F 3 "~" H 8550 4100 50  0001 C CNN
	1    8550 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6080C5A7
P 8750 3900
AR Path="/60A37CB6/60792703/6080C5A7" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608420A6/6080C5A7" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C764/6080C5A7" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608502F9/6080C5A7" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C768/6080C5A7" Ref="#PWR0308"  Part="1" 
F 0 "#PWR0308" H 8750 3650 50  0001 C CNN
F 1 "GND" H 8755 3727 50  0000 C CNN
F 2 "" H 8750 3900 50  0001 C CNN
F 3 "" H 8750 3900 50  0001 C CNN
	1    8750 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 3950 8550 3900
Wire Wire Line
	8550 3900 8750 3900
Wire Wire Line
	8550 3800 8550 3900
Connection ~ 8550 3900
Wire Wire Line
	8200 3850 8200 3500
Wire Wire Line
	8200 3500 8550 3500
Wire Wire Line
	8200 3950 8200 4250
Wire Wire Line
	8200 4250 8550 4250
Wire Wire Line
	8550 4250 8950 4250
Connection ~ 8550 4250
Wire Wire Line
	8550 3500 9000 3500
Connection ~ 8550 3500
Text HLabel 9000 3500 2    50   Input ~ 0
Iout
Text HLabel 8950 4250 2    50   Input ~ 0
~Iout
Text GLabel 5700 2150 1    50   Input ~ 0
SG2.2
Wire Wire Line
	6000 2400 6000 2450
$Comp
L power:+1V8 #PWR?
U 1 1 6080C5C1
P 6050 5000
AR Path="/60A37CB6/60792703/6080C5C1" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608420A6/6080C5C1" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C764/6080C5C1" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608502F9/6080C5C1" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C768/6080C5C1" Ref="#PWR0309"  Part="1" 
F 0 "#PWR0309" H 6050 4850 50  0001 C CNN
F 1 "+1V8" H 6065 5173 50  0000 C CNN
F 2 "" H 6050 5000 50  0001 C CNN
F 3 "" H 6050 5000 50  0001 C CNN
	1    6050 5000
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR?
U 1 1 6080C5C7
P 6800 3650
AR Path="/60A37CB6/60792703/6080C5C7" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608420A6/6080C5C7" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C764/6080C5C7" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608502F9/6080C5C7" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C768/6080C5C7" Ref="#PWR0310"  Part="1" 
F 0 "#PWR0310" H 6800 3500 50  0001 C CNN
F 1 "+1V8" H 6815 3823 50  0000 C CNN
F 2 "" H 6800 3650 50  0001 C CNN
F 3 "" H 6800 3650 50  0001 C CNN
	1    6800 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	6400 4150 7150 4150
$Comp
L power:+1V8 #PWR?
U 1 1 6080C5CE
P 7150 4150
AR Path="/60A37CB6/60792703/6080C5CE" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608420A6/6080C5CE" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C764/6080C5CE" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608502F9/6080C5CE" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C768/6080C5CE" Ref="#PWR0311"  Part="1" 
F 0 "#PWR0311" H 7150 4000 50  0001 C CNN
F 1 "+1V8" H 7165 4323 50  0000 C CNN
F 2 "" H 7150 4150 50  0001 C CNN
F 3 "" H 7150 4150 50  0001 C CNN
	1    7150 4150
	1    0    0    -1  
$EndComp
Connection ~ 7150 4150
Wire Wire Line
	5900 2350 5900 2450
Text GLabel 6000 2400 1    50   Input ~ 0
Master_reset
$Comp
L power:GND #PWR?
U 1 1 608AC80E
P 5900 2350
AR Path="/60A37CB6/60792703/608AC80E" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608420A6/608AC80E" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C764/608AC80E" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608502F9/608AC80E" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C768/608AC80E" Ref="#PWR0307"  Part="1" 
F 0 "#PWR0307" H 5900 2100 50  0001 C CNN
F 1 "GND" H 5905 2177 50  0000 C CNN
F 2 "" H 5900 2350 50  0001 C CNN
F 3 "" H 5900 2350 50  0001 C CNN
	1    5900 2350
	-1   0    0    1   
$EndComp
$EndSCHEMATC
