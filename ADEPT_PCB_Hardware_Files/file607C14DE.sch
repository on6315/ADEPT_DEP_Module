EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 11
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2650 3100 0    50   Input ~ 0
sum1
Text HLabel 2650 3550 0    50   Input ~ 0
sum2
Text HLabel 6300 3350 2    50   Input ~ 0
out
$Comp
L AD825ARZ:AD825ARZ IC?
U 1 1 607C18DA
P 4550 3200
F 0 "IC?" H 5150 3465 50  0000 C CNN
F 1 "AD825ARZ" H 5150 3374 50  0000 C CNN
F 2 "SOIC127P600X175-8N" H 5600 3300 50  0001 L CNN
F 3 "http://www.analog.com/static/imported-files/data_sheets/AD825.pdf" H 5600 3200 50  0001 L CNN
F 4 "AD825ARZ, Fast Operational Amplifier 21MHz, 8-Pin SOIC" H 5600 3100 50  0001 L CNN "Description"
F 5 "1.75" H 5600 3000 50  0001 L CNN "Height"
F 6 "Analog Devices" H 5600 2900 50  0001 L CNN "Manufacturer_Name"
F 7 "AD825ARZ" H 5600 2800 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "584-AD825ARZ" H 5600 2700 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Analog-Devices/AD825ARZ?qs=%2FtpEQrCGXCxOEwDf7bhYPw%3D%3D" H 5600 2600 50  0001 L CNN "Mouser Price/Stock"
F 10 "AD825ARZ" H 5600 2500 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/ad825arz/analog-devices" H 5600 2400 50  0001 L CNN "Arrow Price/Stock"
	1    4550 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 607C2330
P 2900 3100
F 0 "R?" V 2693 3100 50  0000 C CNN
F 1 "R" V 2784 3100 50  0000 C CNN
F 2 "" V 2830 3100 50  0001 C CNN
F 3 "~" H 2900 3100 50  0001 C CNN
	1    2900 3100
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 607C2A50
P 2900 3550
F 0 "R?" V 2693 3550 50  0000 C CNN
F 1 "R" V 2784 3550 50  0000 C CNN
F 2 "" V 2830 3550 50  0001 C CNN
F 3 "~" H 2900 3550 50  0001 C CNN
	1    2900 3550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 607C35A5
P 4550 3400
F 0 "#PWR?" H 4550 3150 50  0001 C CNN
F 1 "GND" V 4555 3272 50  0000 R CNN
F 2 "" H 4550 3400 50  0001 C CNN
F 3 "" H 4550 3400 50  0001 C CNN
	1    4550 3400
	0    1    1    0   
$EndComp
$Comp
L power:-12V #PWR?
U 1 1 607C3C32
P 4550 3500
F 0 "#PWR?" H 4550 3600 50  0001 C CNN
F 1 "-12V" V 4565 3628 50  0000 L CNN
F 2 "" H 4550 3500 50  0001 C CNN
F 3 "" H 4550 3500 50  0001 C CNN
	1    4550 3500
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 607C420A
P 5750 3300
F 0 "#PWR?" H 5750 3150 50  0001 C CNN
F 1 "+12V" V 5765 3428 50  0000 L CNN
F 2 "" H 5750 3300 50  0001 C CNN
F 3 "" H 5750 3300 50  0001 C CNN
	1    5750 3300
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 607C5567
P 8100 5400
F 0 "#PWR?" H 8100 5250 50  0001 C CNN
F 1 "+12V" H 8115 5573 50  0000 C CNN
F 2 "" H 8100 5400 50  0001 C CNN
F 3 "" H 8100 5400 50  0001 C CNN
	1    8100 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 607C556D
P 8100 5650
F 0 "C?" H 8215 5696 50  0000 L CNN
F 1 "10uF" H 8215 5605 50  0000 L CNN
F 2 "" H 8138 5500 50  0001 C CNN
F 3 "~" H 8100 5650 50  0001 C CNN
	1    8100 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 607C5573
P 8500 5650
F 0 "C?" H 8615 5696 50  0000 L CNN
F 1 "0.01uF" H 8615 5605 50  0000 L CNN
F 2 "" H 8538 5500 50  0001 C CNN
F 3 "~" H 8500 5650 50  0001 C CNN
	1    8500 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 607C5579
P 8500 5850
F 0 "#PWR?" H 8500 5600 50  0001 C CNN
F 1 "GND" H 8505 5677 50  0000 C CNN
F 2 "" H 8500 5850 50  0001 C CNN
F 3 "" H 8500 5850 50  0001 C CNN
	1    8500 5850
	1    0    0    -1  
$EndComp
Connection ~ 8100 5500
Wire Wire Line
	8100 5500 8500 5500
Wire Wire Line
	8100 5400 8100 5500
Wire Wire Line
	8100 5800 8500 5800
Wire Wire Line
	8500 5800 8500 5850
Connection ~ 8500 5800
$Comp
L Device:C C?
U 1 1 607C5585
P 6900 5650
F 0 "C?" H 7015 5696 50  0000 L CNN
F 1 "10uF" H 7015 5605 50  0000 L CNN
F 2 "" H 6938 5500 50  0001 C CNN
F 3 "~" H 6900 5650 50  0001 C CNN
	1    6900 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 607C558B
P 7300 5650
F 0 "C?" H 7415 5696 50  0000 L CNN
F 1 "0.01uF" H 7415 5605 50  0000 L CNN
F 2 "" H 7338 5500 50  0001 C CNN
F 3 "~" H 7300 5650 50  0001 C CNN
	1    7300 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 607C5591
P 7300 5850
F 0 "#PWR?" H 7300 5600 50  0001 C CNN
F 1 "GND" H 7305 5677 50  0000 C CNN
F 2 "" H 7300 5850 50  0001 C CNN
F 3 "" H 7300 5850 50  0001 C CNN
	1    7300 5850
	1    0    0    -1  
$EndComp
Connection ~ 6900 5500
Wire Wire Line
	6900 5500 7300 5500
Wire Wire Line
	6900 5400 6900 5500
Wire Wire Line
	6900 5800 7300 5800
Wire Wire Line
	7300 5800 7300 5850
Connection ~ 7300 5800
$Comp
L power:-12V #PWR?
U 1 1 607C559D
P 6900 5400
F 0 "#PWR?" H 6900 5500 50  0001 C CNN
F 1 "-12V" H 6915 5573 50  0000 C CNN
F 2 "" H 6900 5400 50  0001 C CNN
F 3 "" H 6900 5400 50  0001 C CNN
	1    6900 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 607C583A
P 5100 2600
F 0 "R?" V 4893 2600 50  0000 C CNN
F 1 "R" V 4984 2600 50  0000 C CNN
F 2 "" V 5030 2600 50  0001 C CNN
F 3 "~" H 5100 2600 50  0001 C CNN
	1    5100 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 3100 3600 3100
Wire Wire Line
	3600 3100 3600 3300
Wire Wire Line
	3600 3300 4100 3300
Connection ~ 3600 3300
Wire Wire Line
	3600 3550 3050 3550
Wire Wire Line
	3600 3300 3600 3550
Wire Wire Line
	4100 3300 4100 2600
Wire Wire Line
	4100 2600 4950 2600
Connection ~ 4100 3300
Wire Wire Line
	4100 3300 4550 3300
Wire Wire Line
	5250 2600 6100 2600
Wire Wire Line
	6100 2600 6100 3350
Wire Wire Line
	6100 3400 5750 3400
Wire Wire Line
	6100 3350 6300 3350
Connection ~ 6100 3350
Wire Wire Line
	6100 3350 6100 3400
$EndSCHEMATC
