EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 15 57
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
L AD9913BCPZ:AD9913BCPZ IC14
U 1 1 60853A4B
P 5150 3250
AR Path="/60A37CB6/60792703/60853A4B" Ref="IC14"  Part="1" 
AR Path="/60A37CB6/608420A6/60853A4B" Ref="IC?"  Part="1" 
AR Path="/60A37CB6/6084C764/60853A4B" Ref="IC?"  Part="1" 
AR Path="/60A37CB6/608502F9/60853A4B" Ref="IC?"  Part="1" 
F 0 "IC14" H 7900 3050 50  0000 L CNN
F 1 "AD9913BCPZ" H 7900 2950 50  0000 L CNN
F 2 "circuit_DEP:QFN50P500X500X100-33N" H 6600 4050 50  0001 L CNN
F 3 "http://docs-emea.rs-online.com/webdocs/0e3a/0900766b80e3aad4.pdf" H 6600 3950 50  0001 L CNN
F 4 "AD9913BCPZ, Direct Digital Synthesizer 10 bit-Bit 250Msps, 32-Pin LFCSP" H 6600 3850 50  0001 L CNN "Description"
F 5 "1" H 6600 3750 50  0001 L CNN "Height"
F 6 "Analog Devices" H 6600 3650 50  0001 L CNN "Manufacturer_Name"
F 7 "AD9913BCPZ" H 6600 3550 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "584-AD9913BCPZ" H 6600 3450 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.com/Search/Refine.aspx?Keyword=584-AD9913BCPZ" H 6600 3350 50  0001 L CNN "Mouser Price/Stock"
F 10 "AD9913BCPZ" H 6600 3250 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/ad9913bcpz/analog-devices" H 6600 3150 50  0001 L CNN "Arrow Price/Stock"
	1    5150 3250
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR0240
U 1 1 60853A4C
P 4300 3550
AR Path="/60A37CB6/60792703/60853A4C" Ref="#PWR0240"  Part="1" 
AR Path="/60A37CB6/608420A6/60853A4C" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C764/60853A4C" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608502F9/60853A4C" Ref="#PWR?"  Part="1" 
F 0 "#PWR0240" H 4300 3400 50  0001 C CNN
F 1 "+1V8" H 4315 3723 50  0000 C CNN
F 2 "" H 4300 3550 50  0001 C CNN
F 3 "" H 4300 3550 50  0001 C CNN
	1    4300 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3550 4300 3550
$Comp
L power:GND #PWR0241
U 1 1 6085002C
P 4300 3850
AR Path="/60A37CB6/60792703/6085002C" Ref="#PWR0241"  Part="1" 
AR Path="/60A37CB6/608420A6/6085002C" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C764/6085002C" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608502F9/6085002C" Ref="#PWR?"  Part="1" 
F 0 "#PWR0241" H 4300 3600 50  0001 C CNN
F 1 "GND" H 4305 3677 50  0000 C CNN
F 2 "" H 4300 3850 50  0001 C CNN
F 3 "" H 4300 3850 50  0001 C CNN
	1    4300 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3650 4600 3650
Wire Wire Line
	4600 3650 4600 3850
Wire Wire Line
	4600 3850 4300 3850
$Comp
L power:GND #PWR0242
U 1 1 60853A41
P 6950 4250
AR Path="/60A37CB6/60792703/60853A41" Ref="#PWR0242"  Part="1" 
AR Path="/60A37CB6/608420A6/60853A41" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C764/60853A41" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608502F9/60853A41" Ref="#PWR?"  Part="1" 
F 0 "#PWR0242" H 6950 4000 50  0001 C CNN
F 1 "GND" H 6955 4077 50  0000 C CNN
F 2 "" H 6950 4250 50  0001 C CNN
F 3 "" H 6950 4250 50  0001 C CNN
	1    6950 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C43
U 1 1 607993CB
P 7500 4100
AR Path="/60A37CB6/60792703/607993CB" Ref="C43"  Part="1" 
AR Path="/60A37CB6/608420A6/607993CB" Ref="C?"  Part="1" 
AR Path="/60A37CB6/6084C764/607993CB" Ref="C?"  Part="1" 
AR Path="/60A37CB6/608502F9/607993CB" Ref="C?"  Part="1" 
F 0 "C43" H 7615 4146 50  0000 L CNN
F 1 "0.1uF" H 7615 4055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 7538 3950 50  0001 C CNN
F 3 "~" H 7500 4100 50  0001 C CNN
	1    7500 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 4250 7500 4250
$Comp
L power:GND #PWR0243
U 1 1 60853A54
P 6750 3850
AR Path="/60A37CB6/60792703/60853A54" Ref="#PWR0243"  Part="1" 
AR Path="/60A37CB6/608420A6/60853A54" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C764/60853A54" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608502F9/60853A54" Ref="#PWR?"  Part="1" 
F 0 "#PWR0243" H 6750 3600 50  0001 C CNN
F 1 "GND" H 6755 3677 50  0000 C CNN
F 2 "" H 6750 3850 50  0001 C CNN
F 3 "" H 6750 3850 50  0001 C CNN
	1    6750 3850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0244
U 1 1 6079BE65
P 6750 3550
AR Path="/60A37CB6/60792703/6079BE65" Ref="#PWR0244"  Part="1" 
AR Path="/60A37CB6/608420A6/6079BE65" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C764/6079BE65" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608502F9/6079BE65" Ref="#PWR?"  Part="1" 
F 0 "#PWR0244" H 6750 3300 50  0001 C CNN
F 1 "GND" H 6755 3377 50  0000 C CNN
F 2 "" H 6750 3550 50  0001 C CNN
F 3 "" H 6750 3550 50  0001 C CNN
	1    6750 3550
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0245
U 1 1 6079C3B9
P 6750 3350
AR Path="/60A37CB6/60792703/6079C3B9" Ref="#PWR0245"  Part="1" 
AR Path="/60A37CB6/608420A6/6079C3B9" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C764/6079C3B9" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608502F9/6079C3B9" Ref="#PWR?"  Part="1" 
F 0 "#PWR0245" H 6750 3100 50  0001 C CNN
F 1 "GND" H 6755 3177 50  0000 C CNN
F 2 "" H 6750 3350 50  0001 C CNN
F 3 "" H 6750 3350 50  0001 C CNN
	1    6750 3350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0246
U 1 1 60853A45
P 7350 3250
AR Path="/60A37CB6/60792703/60853A45" Ref="#PWR0246"  Part="1" 
AR Path="/60A37CB6/608420A6/60853A45" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C764/60853A45" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608502F9/60853A45" Ref="#PWR?"  Part="1" 
F 0 "#PWR0246" H 7350 3000 50  0001 C CNN
F 1 "GND" H 7355 3077 50  0000 C CNN
F 2 "" H 7350 3250 50  0001 C CNN
F 3 "" H 7350 3250 50  0001 C CNN
	1    7350 3250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R21
U 1 1 60853A46
P 7200 3250
AR Path="/60A37CB6/60792703/60853A46" Ref="R21"  Part="1" 
AR Path="/60A37CB6/608420A6/60853A46" Ref="R?"  Part="1" 
AR Path="/60A37CB6/6084C764/60853A46" Ref="R?"  Part="1" 
AR Path="/60A37CB6/608502F9/60853A46" Ref="R?"  Part="1" 
F 0 "R21" V 6993 3250 50  0000 C CNN
F 1 "4.64k" V 7084 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7130 3250 50  0001 C CNN
F 3 "~" H 7200 3250 50  0001 C CNN
	1    7200 3250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0248
U 1 1 607A1B43
P 6400 5100
AR Path="/60A37CB6/60792703/607A1B43" Ref="#PWR0248"  Part="1" 
AR Path="/60A37CB6/608420A6/607A1B43" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C764/607A1B43" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608502F9/607A1B43" Ref="#PWR?"  Part="1" 
F 0 "#PWR0248" H 6400 4850 50  0001 C CNN
F 1 "GND" H 6405 4927 50  0000 C CNN
F 2 "" H 6400 5100 50  0001 C CNN
F 3 "" H 6400 5100 50  0001 C CNN
	1    6400 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 4800 6250 4750
Wire Wire Line
	6150 4750 6150 5100
Wire Wire Line
	6150 5100 6400 5100
Text GLabel 5850 1950 1    50   Input ~ 0
1.8SCLK
Wire Wire Line
	5850 2250 5850 1950
Text GLabel 5950 1950 1    50   Input ~ 0
1.8MOSI
Wire Wire Line
	5950 2250 5950 1950
Wire Wire Line
	6050 2250 6050 1950
$Comp
L power:GND #PWR0249
U 1 1 607A4268
P 5550 2250
AR Path="/60A37CB6/60792703/607A4268" Ref="#PWR0249"  Part="1" 
AR Path="/60A37CB6/608420A6/607A4268" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C764/607A4268" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608502F9/607A4268" Ref="#PWR?"  Part="1" 
F 0 "#PWR0249" H 5550 2000 50  0001 C CNN
F 1 "GND" H 5555 2077 50  0000 C CNN
F 2 "" H 5550 2250 50  0001 C CNN
F 3 "" H 5550 2250 50  0001 C CNN
	1    5550 2250
	-1   0    0    1   
$EndComp
Text GLabel 6150 1950 1    50   Input ~ 0
Global_IO_update
Wire Wire Line
	6150 2250 6150 1950
Wire Wire Line
	5650 4750 5650 4850
Wire Wire Line
	5850 4800 5850 4750
Wire Wire Line
	5850 4800 6250 4800
Connection ~ 6250 4800
Wire Wire Line
	6250 4800 6400 4800
$Comp
L power:GND #PWR0250
U 1 1 6085003D
P 5650 4950
AR Path="/60A37CB6/60792703/6085003D" Ref="#PWR0250"  Part="1" 
AR Path="/60A37CB6/608420A6/6085003D" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C764/6085003D" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608502F9/6085003D" Ref="#PWR?"  Part="1" 
F 0 "#PWR0250" H 5650 4700 50  0001 C CNN
F 1 "GND" H 5655 4777 50  0000 C CNN
F 2 "" H 5650 4950 50  0001 C CNN
F 3 "" H 5650 4950 50  0001 C CNN
	1    5650 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 4750 5750 4850
Wire Wire Line
	5750 4850 5650 4850
Connection ~ 5650 4850
Wire Wire Line
	5650 4850 5650 4950
Wire Wire Line
	6050 4750 6050 5250
Text GLabel 5900 5900 3    50   Input ~ 0
CLK+
Text GLabel 6200 5900 3    50   Input ~ 0
CLK-
$Comp
L power:GND #PWR0251
U 1 1 6085003E
P 6250 2150
AR Path="/60A37CB6/60792703/6085003E" Ref="#PWR0251"  Part="1" 
AR Path="/60A37CB6/608420A6/6085003E" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C764/6085003E" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608502F9/6085003E" Ref="#PWR?"  Part="1" 
F 0 "#PWR0251" H 6250 1900 50  0001 C CNN
F 1 "GND" H 6255 1977 50  0000 C CNN
F 2 "" H 6250 2150 50  0001 C CNN
F 3 "" H 6250 2150 50  0001 C CNN
	1    6250 2150
	-1   0    0    1   
$EndComp
$Comp
L Device:R R23
U 1 1 60853A51
P 8900 3900
AR Path="/60A37CB6/60792703/60853A51" Ref="R23"  Part="1" 
AR Path="/60A37CB6/608420A6/60853A51" Ref="R?"  Part="1" 
AR Path="/60A37CB6/6084C764/60853A51" Ref="R?"  Part="1" 
AR Path="/60A37CB6/608502F9/60853A51" Ref="R?"  Part="1" 
F 0 "R23" H 8970 3946 50  0000 L CNN
F 1 "50" H 8970 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8830 3900 50  0001 C CNN
F 3 "~" H 8900 3900 50  0001 C CNN
	1    8900 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0252
U 1 1 60850100
P 9100 3700
AR Path="/60A37CB6/60792703/60850100" Ref="#PWR0252"  Part="1" 
AR Path="/60A37CB6/608420A6/60850100" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C764/60850100" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608502F9/60850100" Ref="#PWR?"  Part="1" 
F 0 "#PWR0252" H 9100 3450 50  0001 C CNN
F 1 "GND" H 9105 3527 50  0000 C CNN
F 2 "" H 9100 3700 50  0001 C CNN
F 3 "" H 9100 3700 50  0001 C CNN
	1    9100 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 3750 8900 3700
Wire Wire Line
	8900 3700 9100 3700
Wire Wire Line
	8900 3600 8900 3700
Connection ~ 8900 3700
Wire Wire Line
	8550 3650 8550 3300
Wire Wire Line
	8550 3750 8550 4050
Wire Wire Line
	8550 4050 8900 4050
Wire Wire Line
	8900 4050 9300 4050
Connection ~ 8900 4050
Text HLabel 9350 3300 2    50   Input ~ 0
Iout
Text HLabel 9300 4050 2    50   Input ~ 0
~Iout
Text GLabel 6050 1950 1    50   Input ~ 0
SG1.1
Wire Wire Line
	6350 2200 6350 2250
$Comp
L power:+1V8 #PWR0247
U 1 1 6080297A
P 6400 4800
AR Path="/60A37CB6/60792703/6080297A" Ref="#PWR0247"  Part="1" 
AR Path="/60A37CB6/608420A6/6080297A" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C764/6080297A" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608502F9/6080297A" Ref="#PWR?"  Part="1" 
F 0 "#PWR0247" H 6400 4650 50  0001 C CNN
F 1 "+1V8" H 6415 4973 50  0000 C CNN
F 2 "" H 6400 4800 50  0001 C CNN
F 3 "" H 6400 4800 50  0001 C CNN
	1    6400 4800
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR0265
U 1 1 60802CDD
P 7150 3450
AR Path="/60A37CB6/60792703/60802CDD" Ref="#PWR0265"  Part="1" 
AR Path="/60A37CB6/608420A6/60802CDD" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C764/60802CDD" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608502F9/60802CDD" Ref="#PWR?"  Part="1" 
F 0 "#PWR0265" H 7150 3300 50  0001 C CNN
F 1 "+1V8" H 7165 3623 50  0000 C CNN
F 2 "" H 7150 3450 50  0001 C CNN
F 3 "" H 7150 3450 50  0001 C CNN
	1    7150 3450
	0    1    1    0   
$EndComp
$Comp
L power:+1V8 #PWR0266
U 1 1 60803094
P 7500 3950
AR Path="/60A37CB6/60792703/60803094" Ref="#PWR0266"  Part="1" 
AR Path="/60A37CB6/608420A6/60803094" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/6084C764/60803094" Ref="#PWR?"  Part="1" 
AR Path="/60A37CB6/608502F9/60803094" Ref="#PWR?"  Part="1" 
F 0 "#PWR0266" H 7500 3800 50  0001 C CNN
F 1 "+1V8" H 7515 4123 50  0000 C CNN
F 2 "" H 7500 3950 50  0001 C CNN
F 3 "" H 7500 3950 50  0001 C CNN
	1    7500 3950
	1    0    0    -1  
$EndComp
Connection ~ 7500 3950
Wire Wire Line
	8550 3300 8900 3300
Wire Wire Line
	5950 5500 5900 5500
Wire Wire Line
	5950 4750 5950 5500
Wire Wire Line
	6050 5250 6200 5250
Wire Wire Line
	6200 5250 6200 5900
Wire Wire Line
	5900 5500 5900 5900
$Comp
L Device:R R69
U 1 1 608B3C76
P 8900 3450
AR Path="/60A37CB6/60792703/608B3C76" Ref="R69"  Part="1" 
AR Path="/60A37CB6/608420A6/608B3C76" Ref="R?"  Part="1" 
AR Path="/60A37CB6/6084C764/608B3C76" Ref="R?"  Part="1" 
AR Path="/60A37CB6/608502F9/608B3C76" Ref="R?"  Part="1" 
F 0 "R69" H 8970 3496 50  0000 L CNN
F 1 "50" H 8970 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8830 3450 50  0001 C CNN
F 3 "~" H 8900 3450 50  0001 C CNN
	1    8900 3450
	1    0    0    -1  
$EndComp
Connection ~ 8900 3300
Wire Wire Line
	8900 3300 9350 3300
Wire Wire Line
	6750 3250 7050 3250
Wire Wire Line
	6750 3450 7150 3450
Wire Wire Line
	6750 3650 8550 3650
Wire Wire Line
	6750 3750 8550 3750
Wire Wire Line
	6750 3950 7500 3950
Wire Wire Line
	6250 2150 6250 2250
Text GLabel 6350 2200 1    50   Input ~ 0
Master_reset
$EndSCHEMATC
