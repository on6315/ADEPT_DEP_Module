EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 57
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
L power:GND #PWR0104
U 1 1 6080CD00
P 2800 6740
F 0 "#PWR0104" H 2800 6490 50  0001 C CNN
F 1 "GND" V 2805 6612 50  0000 R CNN
F 2 "" H 2800 6740 50  0001 C CNN
F 3 "" H 2800 6740 50  0001 C CNN
	1    2800 6740
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0105
U 1 1 6080CD06
P 2920 5980
F 0 "#PWR0105" H 2920 5830 50  0001 C CNN
F 1 "+12V" H 2935 6153 50  0000 C CNN
F 2 "" H 2920 5980 50  0001 C CNN
F 3 "" H 2920 5980 50  0001 C CNN
	1    2920 5980
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 6080DA73
P 2260 6180
F 0 "R1" H 2330 6226 50  0000 L CNN
F 1 "6.8k" H 2330 6135 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 2190 6180 50  0001 C CNN
F 3 "~" H 2260 6180 50  0001 C CNN
	1    2260 6180
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1rot1
U 1 1 6080E1A1
P 2260 6540
F 0 "D1rot1" V 2299 6422 50  0000 R CNN
F 1 "1.8" V 2208 6422 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2260 6540 50  0001 C CNN
F 3 "~" H 2260 6540 50  0001 C CNN
	1    2260 6540
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2920 5980 2260 5980
Wire Wire Line
	2260 5980 2260 6030
Wire Wire Line
	2260 6330 2260 6390
Wire Wire Line
	2260 6690 2260 6740
Wire Wire Line
	2260 6740 2800 6740
$Comp
L power:-12V #PWR0106
U 1 1 6080FD07
P 3455 6820
F 0 "#PWR0106" H 3455 6920 50  0001 C CNN
F 1 "-12V" H 3470 6993 50  0000 C CNN
F 2 "" H 3455 6820 50  0001 C CNN
F 3 "" H 3455 6820 50  0001 C CNN
	1    3455 6820
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 60810A1C
P 3210 6000
F 0 "#PWR0107" H 3210 5750 50  0001 C CNN
F 1 "GND" V 3215 5872 50  0000 R CNN
F 2 "" H 3210 6000 50  0001 C CNN
F 3 "" H 3210 6000 50  0001 C CNN
	1    3210 6000
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D2gelb1
U 1 1 608116D6
P 3870 6200
F 0 "D2gelb1" V 3909 6082 50  0000 R CNN
F 1 "1.8" V 3818 6082 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3870 6200 50  0001 C CNN
F 3 "~" H 3870 6200 50  0001 C CNN
	1    3870 6200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3210 6000 3835 6000
$Comp
L power:GND #PWR0108
U 1 1 60812AB5
P 1010 1745
F 0 "#PWR0108" H 1010 1495 50  0001 C CNN
F 1 "GND" V 1015 1617 50  0000 R CNN
F 2 "" H 1010 1745 50  0001 C CNN
F 3 "" H 1010 1745 50  0001 C CNN
	1    1010 1745
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0109
U 1 1 608135B2
P 1010 1445
F 0 "#PWR0109" H 1010 1295 50  0001 C CNN
F 1 "+12V" V 1010 1565 50  0000 L CNN
F 2 "" H 1010 1445 50  0001 C CNN
F 3 "" H 1010 1445 50  0001 C CNN
	1    1010 1445
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR0110
U 1 1 6081419D
P 1425 1455
F 0 "#PWR0110" H 1425 1305 50  0001 C CNN
F 1 "+1V8" H 1440 1628 50  0000 C CNN
F 2 "" H 1425 1455 50  0001 C CNN
F 3 "" H 1425 1455 50  0001 C CNN
	1    1425 1455
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C1
U 1 1 608409DC
P 1010 1595
F 0 "C1" H 895 1549 50  0000 R CNN
F 1 "10uF" H 895 1640 50  0000 R CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-6032-28_Kemet-C_Pad2.25x2.35mm_HandSolder" H 1010 1595 50  0001 C CNN
F 3 "~" H 1010 1595 50  0001 C CNN
	1    1010 1595
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C2
U 1 1 608434D1
P 1425 1605
F 0 "C2" V 1173 1605 50  0000 C CNN
F 1 "10uF" V 1264 1605 50  0000 C CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-6032-28_Kemet-C_Pad2.25x2.35mm_HandSolder" H 1425 1605 50  0001 C CNN
F 3 "~" H 1425 1605 50  0001 C CNN
	1    1425 1605
	1    0    0    -1  
$EndComp
$Comp
L arduino:Arduino_Mega2560_Shield XA1
U 1 1 6084ECF4
P 8000 3950
F 0 "XA1" H 8000 1569 60  0000 C CNN
F 1 "Arduino_Mega2560_Shield" H 8000 1463 60  0000 C CNN
F 2 "AD9833_adapter:Arduino_Mega2560_Shield" H 8700 6700 60  0001 C CNN
F 3 "" H 8700 6700 60  0001 C CNN
	1    8000 3950
	1    0    0    -1  
$EndComp
Text GLabel 7750 1150 1    50   Input ~ 0
MOSI
Text GLabel 7950 1150 1    50   Input ~ 0
SCLK
Wire Wire Line
	7750 1150 7750 1205
Wire Wire Line
	7950 1150 7950 1185
$Comp
L power:+12V #PWR0111
U 1 1 60856BB9
P 5850 6100
F 0 "#PWR0111" H 5850 5950 50  0001 C CNN
F 1 "+12V" H 5865 6273 50  0000 C CNN
F 2 "" H 5850 6100 50  0001 C CNN
F 3 "" H 5850 6100 50  0001 C CNN
	1    5850 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 6550 6200 6300
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 60859EBB
P 6300 6100
F 0 "J2" V 6362 6144 50  0000 L CNN
F 1 "Conn_01x02_Male" V 6650 6100 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6300 6100 50  0001 C CNN
F 3 "~" H 6300 6100 50  0001 C CNN
	1    6300 6100
	0    1    1    0   
$EndComp
Wire Wire Line
	6300 6300 6300 6400
Wire Wire Line
	6300 6400 6550 6400
Wire Wire Line
	6550 6400 6550 6100
Wire Wire Line
	6550 6100 6700 6100
Wire Wire Line
	6200 6550 5850 6550
Wire Wire Line
	5850 6550 5850 6100
$Comp
L power:GND #PWR0112
U 1 1 6085C889
P 6700 5200
F 0 "#PWR0112" H 6700 4950 50  0001 C CNN
F 1 "GND" V 6705 5072 50  0000 R CNN
F 2 "" H 6700 5200 50  0001 C CNN
F 3 "" H 6700 5200 50  0001 C CNN
	1    6700 5200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 608604B6
P 6700 5300
F 0 "#PWR0113" H 6700 5050 50  0001 C CNN
F 1 "GND" V 6705 5172 50  0000 R CNN
F 2 "" H 6700 5300 50  0001 C CNN
F 3 "" H 6700 5300 50  0001 C CNN
	1    6700 5300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 60860C18
P 6700 5400
F 0 "#PWR0114" H 6700 5150 50  0001 C CNN
F 1 "GND" V 6705 5272 50  0000 R CNN
F 2 "" H 6700 5400 50  0001 C CNN
F 3 "" H 6700 5400 50  0001 C CNN
	1    6700 5400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 6086132E
P 6700 5500
F 0 "#PWR0115" H 6700 5250 50  0001 C CNN
F 1 "GND" V 6705 5372 50  0000 R CNN
F 2 "" H 6700 5500 50  0001 C CNN
F 3 "" H 6700 5500 50  0001 C CNN
	1    6700 5500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 60861A66
P 6700 5600
F 0 "#PWR0116" H 6700 5350 50  0001 C CNN
F 1 "GND" V 6705 5472 50  0000 R CNN
F 2 "" H 6700 5600 50  0001 C CNN
F 3 "" H 6700 5600 50  0001 C CNN
	1    6700 5600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 608624D2
P 8150 1350
F 0 "#PWR0117" H 8150 1100 50  0001 C CNN
F 1 "GND" V 8155 1222 50  0000 R CNN
F 2 "" H 8150 1350 50  0001 C CNN
F 3 "" H 8150 1350 50  0001 C CNN
	1    8150 1350
	-1   0    0    1   
$EndComp
$Sheet
S 3950 4000 1200 400 
U 60A37CB6
F0 "Sheet60A37CB5" 50
F1 "file60A37CB5.sch" 50
$EndSheet
Text GLabel 9300 2900 2    50   Input ~ 0
MUX1.1
Text GLabel 9300 2600 2    50   Input ~ 0
MUX1.2
Text GLabel 6700 3700 0    50   Input ~ 0
MUX2.1
Text GLabel 6700 4000 0    50   Input ~ 0
MUX2.2
Text GLabel 9300 2800 2    50   Input ~ 0
MUX3.1
Text GLabel 6700 3800 0    50   Input ~ 0
MUX4.1
Text GLabel 6700 4100 0    50   Input ~ 0
MUX4.2
Text GLabel 9300 2700 2    50   Input ~ 0
MUX5.1
Text GLabel 6700 3900 0    50   Input ~ 0
MUX6.1
Text GLabel 6700 4200 0    50   Input ~ 0
MUX6.2
Text GLabel 9300 2500 2    50   Input ~ 0
MUX3.2
Text GLabel 9300 2400 2    50   Input ~ 0
MUX5.2
Text GLabel 9300 4300 2    50   Input ~ 0
R1.1
Text GLabel 9300 1800 2    50   Input ~ 0
R1.2
Text GLabel 9300 4100 2    50   Input ~ 0
R2.1
Text GLabel 9300 1900 2    50   Input ~ 0
R2.2
Text GLabel 9300 3900 2    50   Input ~ 0
R3.1
Text GLabel 9300 2000 2    50   Input ~ 0
R3.2
Text GLabel 9300 3700 2    50   Input ~ 0
R4.1
Text GLabel 9300 2100 2    50   Input ~ 0
R4.2
Text GLabel 9300 3500 2    50   Input ~ 0
R5.1
Text GLabel 9300 2200 2    50   Input ~ 0
R5.2
Text GLabel 9300 3300 2    50   Input ~ 0
R6.1
Text GLabel 9300 2300 2    50   Input ~ 0
R6.2
Text GLabel 10405 4400 1    50   Input ~ 0
Global_IO_update
Text GLabel 9630 4500 1    50   Input ~ 0
Master_reset
Text GLabel 5350 2965 0    50   Input ~ 0
CLKenable
Text GLabel 6700 3600 0    50   Input ~ 0
R1DC
Text GLabel 6700 3500 0    50   Input ~ 0
R2DC
Text GLabel 6700 3400 0    50   Input ~ 0
R3DC
Text GLabel 6700 3300 0    50   Input ~ 0
R4DC
Text GLabel 6700 3200 0    50   Input ~ 0
R5DC
Text GLabel 6700 3100 0    50   Input ~ 0
R6DC
Text GLabel 6700 2000 0    50   Input ~ 0
R1.3
Text GLabel 6700 2100 0    50   Input ~ 0
R2.3
Text GLabel 6700 2200 0    50   Input ~ 0
R3.3
Text GLabel 6700 2300 0    50   Input ~ 0
R4.3
Text GLabel 6700 2400 0    50   Input ~ 0
R5.3
Text GLabel 6700 2500 0    50   Input ~ 0
R6.3
Wire Wire Line
	3880 6820 3880 6720
Wire Wire Line
	3455 6820 3880 6820
Wire Wire Line
	3880 6420 3880 6350
Wire Wire Line
	3880 6350 3870 6350
Wire Wire Line
	3870 6045 3870 6050
Wire Wire Line
	3870 6045 3835 6045
Wire Wire Line
	3835 6000 3835 6045
$Comp
L Device:R R124
U 1 1 608758CA
P 9450 5700
F 0 "R124" V 9243 5700 50  0000 C CNN
F 1 "R" V 9334 5700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 9380 5700 50  0001 C CNN
F 3 "~" H 9450 5700 50  0001 C CNN
	1    9450 5700
	0    1    1    0   
$EndComp
Wire Wire Line
	10020 5700 9955 5700
Wire Wire Line
	9655 5700 9600 5700
$Comp
L Device:R R125
U 1 1 608758D8
P 9805 5700
F 0 "R125" V 9598 5700 50  0000 C CNN
F 1 "R" V 9689 5700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 9735 5700 50  0001 C CNN
F 3 "~" H 9805 5700 50  0001 C CNN
	1    9805 5700
	0    1    1    0   
$EndComp
$Comp
L Device:R R127
U 1 1 608778C5
P 10165 5600
F 0 "R127" V 9958 5600 50  0000 C CNN
F 1 "R" V 10049 5600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 10095 5600 50  0001 C CNN
F 3 "~" H 10165 5600 50  0001 C CNN
	1    10165 5600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0672
U 1 1 608778CB
P 10735 5600
F 0 "#PWR0672" H 10735 5350 50  0001 C CNN
F 1 "GND" V 10740 5472 50  0000 R CNN
F 2 "" H 10735 5600 50  0001 C CNN
F 3 "" H 10735 5600 50  0001 C CNN
	1    10735 5600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10735 5600 10670 5600
Wire Wire Line
	10370 5600 10315 5600
$Comp
L Device:R R138
U 1 1 608778D3
P 10520 5600
F 0 "R138" V 10313 5600 50  0000 C CNN
F 1 "R" V 10404 5600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 10450 5600 50  0001 C CNN
F 3 "~" H 10520 5600 50  0001 C CNN
	1    10520 5600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0679
U 1 1 6088D552
P 10020 5700
F 0 "#PWR0679" H 10020 5450 50  0001 C CNN
F 1 "GND" V 10025 5572 50  0000 R CNN
F 2 "" H 10020 5700 50  0001 C CNN
F 3 "" H 10020 5700 50  0001 C CNN
	1    10020 5700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9300 5600 10015 5600
Wire Wire Line
	9300 4600 10080 4600
Text GLabel 9645 4900 1    50   Input ~ 0
SG2.1
$Comp
L Device:R R132
U 1 1 60879268
P 10470 4800
F 0 "R132" V 10263 4800 50  0000 C CNN
F 1 "R" V 10354 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 10400 4800 50  0001 C CNN
F 3 "~" H 10470 4800 50  0001 C CNN
	1    10470 4800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0674
U 1 1 6087926E
P 11040 4800
F 0 "#PWR0674" H 11040 4550 50  0001 C CNN
F 1 "GND" V 11045 4672 50  0000 R CNN
F 2 "" H 11040 4800 50  0001 C CNN
F 3 "" H 11040 4800 50  0001 C CNN
	1    11040 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	11040 4800 10975 4800
Wire Wire Line
	10675 4800 10620 4800
$Comp
L Device:R R143
U 1 1 60879276
P 10825 4800
F 0 "R143" V 10618 4800 50  0000 C CNN
F 1 "R" V 10709 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 10755 4800 50  0001 C CNN
F 3 "~" H 10825 4800 50  0001 C CNN
	1    10825 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	9300 4800 10320 4800
Wire Wire Line
	9300 5000 10055 5000
Wire Wire Line
	9300 5200 10290 5200
Wire Wire Line
	9300 5400 10030 5400
$Comp
L Device:R R146
U 1 1 6087D0BA
P 10795 5200
F 0 "R146" V 10588 5200 50  0000 C CNN
F 1 "R" V 10679 5200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 10725 5200 50  0001 C CNN
F 3 "~" H 10795 5200 50  0001 C CNN
	1    10795 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	10645 5200 10590 5200
Wire Wire Line
	11010 5200 10945 5200
$Comp
L power:GND #PWR0678
U 1 1 6087D0B2
P 11010 5200
F 0 "#PWR0678" H 11010 4950 50  0001 C CNN
F 1 "GND" V 11015 5072 50  0000 R CNN
F 2 "" H 11010 5200 50  0001 C CNN
F 3 "" H 11010 5200 50  0001 C CNN
	1    11010 5200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R135
U 1 1 6087D0AC
P 10440 5200
F 0 "R135" V 10233 5200 50  0000 C CNN
F 1 "R" V 10324 5200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 10370 5200 50  0001 C CNN
F 3 "~" H 10440 5200 50  0001 C CNN
	1    10440 5200
	0    1    1    0   
$EndComp
$Comp
L Device:R R147
U 1 1 6087BE78
P 10560 5000
F 0 "R147" V 10353 5000 50  0000 C CNN
F 1 "R" V 10444 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 10490 5000 50  0001 C CNN
F 3 "~" H 10560 5000 50  0001 C CNN
	1    10560 5000
	0    1    1    0   
$EndComp
Wire Wire Line
	10410 5000 10355 5000
Wire Wire Line
	10775 5000 10710 5000
$Comp
L power:GND #PWR0677
U 1 1 6087BE70
P 10775 5000
F 0 "#PWR0677" H 10775 4750 50  0001 C CNN
F 1 "GND" V 10780 4872 50  0000 R CNN
F 2 "" H 10775 5000 50  0001 C CNN
F 3 "" H 10775 5000 50  0001 C CNN
	1    10775 5000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R136
U 1 1 6087BE6A
P 10205 5000
F 0 "R136" V 9998 5000 50  0000 C CNN
F 1 "R" V 10089 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 10135 5000 50  0001 C CNN
F 3 "~" H 10205 5000 50  0001 C CNN
	1    10205 5000
	0    1    1    0   
$EndComp
$Comp
L Device:R R145
U 1 1 6087ADF5
P 9805 5100
F 0 "R145" V 9598 5100 50  0000 C CNN
F 1 "R" V 9689 5100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 9735 5100 50  0001 C CNN
F 3 "~" H 9805 5100 50  0001 C CNN
	1    9805 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	9655 5100 9600 5100
Wire Wire Line
	10020 5100 9955 5100
$Comp
L power:GND #PWR0676
U 1 1 6087ADED
P 10020 5100
F 0 "#PWR0676" H 10020 4850 50  0001 C CNN
F 1 "GND" V 10025 4972 50  0000 R CNN
F 2 "" H 10020 5100 50  0001 C CNN
F 3 "" H 10020 5100 50  0001 C CNN
	1    10020 5100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R134
U 1 1 6087ADE7
P 9450 5100
F 0 "R134" V 9243 5100 50  0000 C CNN
F 1 "R" V 9334 5100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 9380 5100 50  0001 C CNN
F 3 "~" H 9450 5100 50  0001 C CNN
	1    9450 5100
	0    1    1    0   
$EndComp
$Comp
L Device:R R144
U 1 1 60879FDD
P 9805 4900
F 0 "R144" V 9598 4900 50  0000 C CNN
F 1 "R" V 9689 4900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 9735 4900 50  0001 C CNN
F 3 "~" H 9805 4900 50  0001 C CNN
	1    9805 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	9655 4900 9600 4900
Wire Wire Line
	10020 4900 9955 4900
$Comp
L power:GND #PWR0675
U 1 1 60879FD5
P 10020 4900
F 0 "#PWR0675" H 10020 4650 50  0001 C CNN
F 1 "GND" V 10025 4772 50  0000 R CNN
F 2 "" H 10020 4900 50  0001 C CNN
F 3 "" H 10020 4900 50  0001 C CNN
	1    10020 4900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R133
U 1 1 60879FCF
P 9450 4900
F 0 "R133" V 9243 4900 50  0000 C CNN
F 1 "R" V 9334 4900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 9380 4900 50  0001 C CNN
F 3 "~" H 9450 4900 50  0001 C CNN
	1    9450 4900
	0    1    1    0   
$EndComp
$Comp
L Device:R R142
U 1 1 608785B2
P 9805 4700
F 0 "R142" V 9598 4700 50  0000 C CNN
F 1 "R" V 9689 4700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 9735 4700 50  0001 C CNN
F 3 "~" H 9805 4700 50  0001 C CNN
	1    9805 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	9655 4700 9600 4700
Wire Wire Line
	10020 4700 9955 4700
$Comp
L power:GND #PWR0673
U 1 1 608785AA
P 10020 4700
F 0 "#PWR0673" H 10020 4450 50  0001 C CNN
F 1 "GND" V 10025 4572 50  0000 R CNN
F 2 "" H 10020 4700 50  0001 C CNN
F 3 "" H 10020 4700 50  0001 C CNN
	1    10020 4700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R131
U 1 1 608785A4
P 9450 4700
F 0 "R131" V 9243 4700 50  0000 C CNN
F 1 "R" V 9334 4700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 9380 4700 50  0001 C CNN
F 3 "~" H 9450 4700 50  0001 C CNN
	1    9450 4700
	0    1    1    0   
$EndComp
$Comp
L Device:R R141
U 1 1 60876DCC
P 9805 5500
F 0 "R141" V 9598 5500 50  0000 C CNN
F 1 "R" V 9689 5500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 9735 5500 50  0001 C CNN
F 3 "~" H 9805 5500 50  0001 C CNN
	1    9805 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	9655 5500 9600 5500
Wire Wire Line
	10020 5500 9955 5500
$Comp
L power:GND #PWR0671
U 1 1 60876DC4
P 10020 5500
F 0 "#PWR0671" H 10020 5250 50  0001 C CNN
F 1 "GND" V 10025 5372 50  0000 R CNN
F 2 "" H 10020 5500 50  0001 C CNN
F 3 "" H 10020 5500 50  0001 C CNN
	1    10020 5500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R130
U 1 1 60876DBE
P 9450 5500
F 0 "R130" V 9243 5500 50  0000 C CNN
F 1 "R" V 9334 5500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 9380 5500 50  0001 C CNN
F 3 "~" H 9450 5500 50  0001 C CNN
	1    9450 5500
	0    1    1    0   
$EndComp
$Comp
L Device:R R140
U 1 1 60876242
P 10535 5400
F 0 "R140" V 10328 5400 50  0000 C CNN
F 1 "R" V 10419 5400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 10465 5400 50  0001 C CNN
F 3 "~" H 10535 5400 50  0001 C CNN
	1    10535 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	10385 5400 10330 5400
Wire Wire Line
	10750 5400 10685 5400
$Comp
L power:GND #PWR0670
U 1 1 6087623A
P 10750 5400
F 0 "#PWR0670" H 10750 5150 50  0001 C CNN
F 1 "GND" V 10755 5272 50  0000 R CNN
F 2 "" H 10750 5400 50  0001 C CNN
F 3 "" H 10750 5400 50  0001 C CNN
	1    10750 5400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R129
U 1 1 60876234
P 10180 5400
F 0 "R129" V 9973 5400 50  0000 C CNN
F 1 "R" V 10064 5400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 10110 5400 50  0001 C CNN
F 3 "~" H 10180 5400 50  0001 C CNN
	1    10180 5400
	0    1    1    0   
$EndComp
$Comp
L Device:R R139
U 1 1 60874A78
P 9805 5300
F 0 "R139" V 9598 5300 50  0000 C CNN
F 1 "R" V 9689 5300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 9735 5300 50  0001 C CNN
F 3 "~" H 9805 5300 50  0001 C CNN
	1    9805 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	9655 5300 9600 5300
Wire Wire Line
	10020 5300 9955 5300
$Comp
L power:GND #PWR0668
U 1 1 60874A70
P 10020 5300
F 0 "#PWR0668" H 10020 5050 50  0001 C CNN
F 1 "GND" V 10025 5172 50  0000 R CNN
F 2 "" H 10020 5300 50  0001 C CNN
F 3 "" H 10020 5300 50  0001 C CNN
	1    10020 5300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R128
U 1 1 60874A6A
P 9450 5300
F 0 "R128" V 9243 5300 50  0000 C CNN
F 1 "R" V 9334 5300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 9380 5300 50  0001 C CNN
F 3 "~" H 9450 5300 50  0001 C CNN
	1    9450 5300
	0    1    1    0   
$EndComp
$Comp
L Device:R R137
U 1 1 608729A3
P 10585 4600
F 0 "R137" V 10378 4600 50  0000 C CNN
F 1 "R" V 10469 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 10515 4600 50  0001 C CNN
F 3 "~" H 10585 4600 50  0001 C CNN
	1    10585 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	10435 4600 10380 4600
Wire Wire Line
	10800 4600 10735 4600
$Comp
L power:GND #PWR0667
U 1 1 608713A5
P 10800 4600
F 0 "#PWR0667" H 10800 4350 50  0001 C CNN
F 1 "GND" V 10805 4472 50  0000 R CNN
F 2 "" H 10800 4600 50  0001 C CNN
F 3 "" H 10800 4600 50  0001 C CNN
	1    10800 4600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R126
U 1 1 60870F15
P 10230 4600
F 0 "R126" V 10023 4600 50  0000 C CNN
F 1 "R" V 10114 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 10160 4600 50  0001 C CNN
F 3 "~" H 10230 4600 50  0001 C CNN
	1    10230 4600
	0    1    1    0   
$EndComp
Text GLabel 10350 5600 1    50   Input ~ 0
SG6.2
Text GLabel 9625 5700 1    50   Input ~ 0
SG6.1
Text GLabel 10365 5400 1    50   Input ~ 0
SG5.2
Text GLabel 10625 5200 1    50   Input ~ 0
SG4.2
Text GLabel 9630 5500 1    50   Input ~ 0
SG5.1
Text GLabel 9630 5300 1    50   Input ~ 0
SG4.1
Text GLabel 10390 5000 1    50   Input ~ 0
SG3.2
Text GLabel 9615 5100 1    50   Input ~ 0
SG3.1
Text GLabel 10650 4800 1    50   Input ~ 0
SG2.2
Text GLabel 10415 4600 1    50   Input ~ 0
SG1.2
Text GLabel 9625 4700 1    50   Input ~ 0
SG1.1
Wire Wire Line
	9300 4400 10080 4400
$Comp
L Device:R R151
U 1 1 60922DD4
P 10585 4400
F 0 "R151" V 10378 4400 50  0000 C CNN
F 1 "R" V 10469 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 10515 4400 50  0001 C CNN
F 3 "~" H 10585 4400 50  0001 C CNN
	1    10585 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	10435 4400 10380 4400
Wire Wire Line
	10800 4400 10735 4400
$Comp
L power:GND #PWR0669
U 1 1 60922DDC
P 10800 4400
F 0 "#PWR0669" H 10800 4150 50  0001 C CNN
F 1 "GND" V 10805 4272 50  0000 R CNN
F 2 "" H 10800 4400 50  0001 C CNN
F 3 "" H 10800 4400 50  0001 C CNN
	1    10800 4400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R150
U 1 1 60922DE2
P 10230 4400
F 0 "R150" V 10023 4400 50  0000 C CNN
F 1 "R" V 10114 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 10160 4400 50  0001 C CNN
F 3 "~" H 10230 4400 50  0001 C CNN
	1    10230 4400
	0    1    1    0   
$EndComp
$Comp
L Device:R R149
U 1 1 60926EE5
P 9805 4500
F 0 "R149" V 9598 4500 50  0000 C CNN
F 1 "R" V 9689 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 9735 4500 50  0001 C CNN
F 3 "~" H 9805 4500 50  0001 C CNN
	1    9805 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	9655 4500 9600 4500
Wire Wire Line
	10020 4500 9955 4500
$Comp
L power:GND #PWR0680
U 1 1 60926EED
P 10020 4500
F 0 "#PWR0680" H 10020 4250 50  0001 C CNN
F 1 "GND" V 10025 4372 50  0000 R CNN
F 2 "" H 10020 4500 50  0001 C CNN
F 3 "" H 10020 4500 50  0001 C CNN
	1    10020 4500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R148
U 1 1 60926EF3
P 9450 4500
F 0 "R148" V 9243 4500 50  0000 C CNN
F 1 "R" V 9334 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 9380 4500 50  0001 C CNN
F 3 "~" H 9450 4500 50  0001 C CNN
	1    9450 4500
	0    1    1    0   
$EndComp
$Comp
L Device:R R154
U 1 1 6093233C
P 8100 1185
F 0 "R154" V 7893 1185 50  0000 C CNN
F 1 "R" V 7984 1185 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8030 1185 50  0001 C CNN
F 3 "~" H 8100 1185 50  0001 C CNN
	1    8100 1185
	0    1    1    0   
$EndComp
Connection ~ 7950 1185
Wire Wire Line
	7950 1185 7950 1350
$Comp
L Device:R R155
U 1 1 6093281E
P 8250 990
F 0 "R155" H 8180 944 50  0000 R CNN
F 1 "R" H 8180 1035 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8180 990 50  0001 C CNN
F 3 "~" H 8250 990 50  0001 C CNN
	1    8250 990 
	-1   0    0    1   
$EndComp
Wire Wire Line
	8295 1185 8250 1185
Wire Wire Line
	8250 1140 8250 1185
Connection ~ 8250 1185
$Comp
L power:GND #PWR0681
U 1 1 60936880
P 7450 825
F 0 "#PWR0681" H 7450 575 50  0001 C CNN
F 1 "GND" V 7455 697 50  0000 R CNN
F 2 "" H 7450 825 50  0001 C CNN
F 3 "" H 7450 825 50  0001 C CNN
	1    7450 825 
	-1   0    0    1   
$EndComp
Wire Wire Line
	8250 805  8250 840 
$Comp
L Device:R R153
U 1 1 6093891A
P 7600 1205
F 0 "R153" V 7807 1205 50  0000 C CNN
F 1 "R" V 7716 1205 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7530 1205 50  0001 C CNN
F 3 "~" H 7600 1205 50  0001 C CNN
	1    7600 1205
	0    -1   -1   0   
$EndComp
Connection ~ 7750 1205
Wire Wire Line
	7750 1205 7750 1350
$Comp
L Device:R R152
U 1 1 60938C1B
P 7450 1010
F 0 "R152" H 7380 964 50  0000 R CNN
F 1 "R" H 7380 1055 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7380 1010 50  0001 C CNN
F 3 "~" H 7450 1010 50  0001 C CNN
	1    7450 1010
	-1   0    0    1   
$EndComp
Text GLabel 7375 1205 0    50   Input ~ 0
1.8MOSI
Wire Wire Line
	7450 1205 7375 1205
Wire Wire Line
	7450 1160 7450 1205
Connection ~ 7450 1205
Wire Wire Line
	7450 825  7450 860 
$Comp
L power:GND #PWR0682
U 1 1 6093F86E
P 8250 805
F 0 "#PWR0682" H 8250 555 50  0001 C CNN
F 1 "GND" V 8255 677 50  0000 R CNN
F 2 "" H 8250 805 50  0001 C CNN
F 3 "" H 8250 805 50  0001 C CNN
	1    8250 805 
	-1   0    0    1   
$EndComp
Text GLabel 8295 1185 2    50   Input ~ 0
1.8SCLK
$Comp
L power:+5V #PWR0683
U 1 1 60962F06
P 6045 5810
F 0 "#PWR0683" H 6045 5660 50  0001 C CNN
F 1 "+5V" V 6060 5938 50  0000 L CNN
F 2 "" H 6045 5810 50  0001 C CNN
F 3 "" H 6045 5810 50  0001 C CNN
	1    6045 5810
	1    0    0    -1  
$EndComp
$Comp
L LT1764AEQ-1.8#PBF:LT1764AEQ-1.8#PBF IC1
U 1 1 60974BBA
P 2225 2535
F 0 "IC1" H 2825 2800 50  0000 C CNN
F 1 "LT1764AEQ-1.8#PBF" H 2825 2709 50  0000 C CNN
F 2 "circuit_DEP - V2:TO170P1394X457-6N" H 3275 2635 50  0001 L CNN
F 3 "http://docs-emea.rs-online.com/webdocs/0ab7/0900766b80ab7d9c.pdf" H 3275 2535 50  0001 L CNN
F 4 "LT1764AEQ-1.8#PBF, Low Noise LDO Voltage Regulator, 3A, 1.8 V, 2.7  20 Vin, 6-Pin D2PAK" H 3275 2435 50  0001 L CNN "Description"
F 5 "4.572" H 3275 2335 50  0001 L CNN "Height"
F 6 "Linear Technology" H 3275 2235 50  0001 L CNN "Manufacturer_Name"
F 7 "LT1764AEQ-1.8#PBF" H 3275 2135 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "584-LT1764AEQ-1.8PBF" H 3275 2035 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Analog-Devices-Linear-Technology/LT1764AEQ-18PBF?qs=ytflclh7QUUt1aVW6nfymg%3D%3D" H 3275 1935 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 3275 1835 50  0001 L CNN "Arrow Part Number"
F 11 "" H 3275 1735 50  0001 L CNN "Arrow Price/Stock"
	1    2225 2535
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0733
U 1 1 60975265
P 3425 2535
F 0 "#PWR0733" H 3425 2285 50  0001 C CNN
F 1 "GND" V 3430 2407 50  0000 R CNN
F 2 "" H 3425 2535 50  0001 C CNN
F 3 "" H 3425 2535 50  0001 C CNN
	1    3425 2535
	0    -1   -1   0   
$EndComp
Connection ~ 2225 2535
Wire Wire Line
	2225 2535 2225 2635
$Comp
L power:GND #PWR0734
U 1 1 60979A4E
P 2225 2735
F 0 "#PWR0734" H 2225 2485 50  0001 C CNN
F 1 "GND" V 2230 2607 50  0000 R CNN
F 2 "" H 2225 2735 50  0001 C CNN
F 3 "" H 2225 2735 50  0001 C CNN
	1    2225 2735
	0    1    1    0   
$EndComp
Wire Wire Line
	2225 2835 2225 2935
Wire Wire Line
	2225 2935 2130 2935
Connection ~ 2225 2935
$Comp
L power:+1V8 #PWR0735
U 1 1 6097E23F
P 2130 2935
F 0 "#PWR0735" H 2130 2785 50  0001 C CNN
F 1 "+1V8" H 2145 3108 50  0000 C CNN
F 2 "" H 2130 2935 50  0001 C CNN
F 3 "" H 2130 2935 50  0001 C CNN
	1    2130 2935
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0736
U 1 1 6097FAA9
P 1425 1755
F 0 "#PWR0736" H 1425 1505 50  0001 C CNN
F 1 "GND" V 1430 1627 50  0000 R CNN
F 2 "" H 1425 1755 50  0001 C CNN
F 3 "" H 1425 1755 50  0001 C CNN
	1    1425 1755
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0737
U 1 1 6097FC5A
P 2225 2425
F 0 "#PWR0737" H 2225 2275 50  0001 C CNN
F 1 "+12V" V 2225 2545 50  0000 L CNN
F 2 "" H 2225 2425 50  0001 C CNN
F 3 "" H 2225 2425 50  0001 C CNN
	1    2225 2425
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2225 2425 2225 2535
$Comp
L Mechanical:MountingHole H4
U 1 1 609FBB06
P 4505 2380
F 0 "H4" H 4605 2426 50  0000 L CNN
F 1 "MountingHole" H 4605 2335 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm" H 4505 2380 50  0001 C CNN
F 3 "~" H 4505 2380 50  0001 C CNN
	1    4505 2380
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 609FBC5F
P 4505 2185
F 0 "H3" H 4605 2231 50  0000 L CNN
F 1 "MountingHole" H 4605 2140 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm" H 4505 2185 50  0001 C CNN
F 3 "~" H 4505 2185 50  0001 C CNN
	1    4505 2185
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 609FBD94
P 4505 2000
F 0 "H2" H 4605 2046 50  0000 L CNN
F 1 "MountingHole" H 4605 1955 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm" H 4505 2000 50  0001 C CNN
F 3 "~" H 4505 2000 50  0001 C CNN
	1    4505 2000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 609FBE78
P 4500 1830
F 0 "H1" H 4600 1876 50  0000 L CNN
F 1 "MountingHole" H 4600 1785 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm" H 4500 1830 50  0001 C CNN
F 3 "~" H 4500 1830 50  0001 C CNN
	1    4500 1830
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2gelb2
U 1 1 60B789DE
P 9895 3320
F 0 "D2gelb2" V 9934 3202 50  0000 R CNN
F 1 "1.8" V 9843 3202 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9895 3320 50  0001 C CNN
F 3 "~" H 9895 3320 50  0001 C CNN
	1    9895 3320
	-1   0    0    1   
$EndComp
$Comp
L Device:R R168
U 1 1 60B79363
P 10195 3320
F 0 "R168" H 10265 3366 50  0000 L CNN
F 1 "1.6k" H 10265 3275 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 10125 3320 50  0001 C CNN
F 3 "~" H 10195 3320 50  0001 C CNN
	1    10195 3320
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0738
U 1 1 60B79850
P 10345 3320
F 0 "#PWR0738" H 10345 3070 50  0001 C CNN
F 1 "GND" V 10350 3192 50  0000 R CNN
F 2 "" H 10345 3320 50  0001 C CNN
F 3 "" H 10345 3320 50  0001 C CNN
	1    10345 3320
	0    -1   -1   0   
$EndComp
$Sheet
S 4570 4960 980  570 
U 60BB8E71
F0 "Power_Supply" 50
F1 "Power_supply.sch" 50
$EndSheet
$Comp
L Connector:Conn_01x05_Female J4
U 1 1 60BF7D4A
P 5475 1590
F 0 "J4" H 5367 1165 50  0000 C CNN
F 1 "Conn_01x05_Female" H 5367 1256 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Vertical" H 5475 1590 50  0001 C CNN
F 3 "~" H 5475 1590 50  0001 C CNN
	1    5475 1590
	-1   0    0    1   
$EndComp
Wire Wire Line
	6700 1900 5675 1900
Wire Wire Line
	5675 1900 5675 1790
Wire Wire Line
	6700 1800 6120 1800
Wire Wire Line
	6120 1800 6120 1690
Wire Wire Line
	6120 1690 5675 1690
$Comp
L power:GND #PWR0750
U 1 1 60BFC51B
P 5825 1595
F 0 "#PWR0750" H 5825 1345 50  0001 C CNN
F 1 "GND" V 5830 1467 50  0000 R CNN
F 2 "" H 5825 1595 50  0001 C CNN
F 3 "" H 5825 1595 50  0001 C CNN
	1    5825 1595
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5825 1595 5675 1595
Wire Wire Line
	5675 1595 5675 1590
$Comp
L power:+5V #PWR0751
U 1 1 60BFFE91
P 5715 1490
F 0 "#PWR0751" H 5715 1340 50  0001 C CNN
F 1 "+5V" V 5730 1618 50  0000 L CNN
F 2 "" H 5715 1490 50  0001 C CNN
F 3 "" H 5715 1490 50  0001 C CNN
	1    5715 1490
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0752
U 1 1 60C00825
P 5710 1390
F 0 "#PWR0752" H 5710 1240 50  0001 C CNN
F 1 "+5V" V 5725 1518 50  0000 L CNN
F 2 "" H 5710 1390 50  0001 C CNN
F 3 "" H 5710 1390 50  0001 C CNN
	1    5710 1390
	0    1    1    0   
$EndComp
Wire Wire Line
	5715 1490 5675 1490
Wire Wire Line
	5710 1390 5675 1390
$Comp
L Connector:Conn_01x02_Male J5
U 1 1 60C14ED6
P 6330 5780
F 0 "J5" V 6392 5824 50  0000 L CNN
F 1 "Conn_01x02_Male" V 6680 5780 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6330 5780 50  0001 C CNN
F 3 "~" H 6330 5780 50  0001 C CNN
	1    6330 5780
	0    1    1    0   
$EndComp
Wire Wire Line
	6700 5900 6700 6000
Wire Wire Line
	6700 6000 6330 6000
Wire Wire Line
	6330 6000 6330 5980
Connection ~ 6700 6000
Wire Wire Line
	6230 5980 6230 6005
Wire Wire Line
	6230 6005 6045 6005
Wire Wire Line
	6045 6005 6045 5810
$Comp
L Device:R R2
U 1 1 608116D0
P 3880 6570
F 0 "R2" H 3950 6616 50  0000 L CNN
F 1 "6.8k" H 3950 6525 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 3810 6570 50  0001 C CNN
F 3 "~" H 3880 6570 50  0001 C CNN
	1    3880 6570
	1    0    0    -1  
$EndComp
Wire Wire Line
	9745 3100 9300 3100
Wire Wire Line
	9745 3100 9745 3320
$EndSCHEMATC
