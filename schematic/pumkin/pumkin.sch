EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
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
L Transistor_BJT:S8050 Q?
U 1 1 66E85EDC
P 4200 3350
F 0 "Q?" H 4390 3396 50  0001 L CNN
F 1 "SS8050" H 4390 3350 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4400 3275 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8050.pdf" H 4200 3350 50  0001 L CNN
	1    4200 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 66E868D0
P 3650 3500
F 0 "R?" H 3718 3546 50  0001 L CNN
F 1 "10M" H 3718 3500 50  0000 L CNN
F 2 "" H 3650 3500 50  0001 C CNN
F 3 "~" H 3650 3500 50  0001 C CNN
	1    3650 3500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 66E891B1
P 3600 3100
F 0 "R?" H 3668 3146 50  0001 L CNN
F 1 "10M" H 3668 3100 50  0000 L CNN
F 2 "" H 3600 3100 50  0001 C CNN
F 3 "~" H 3600 3100 50  0001 C CNN
	1    3600 3100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 66E89974
P 3350 3400
F 0 "R?" H 3418 3446 50  0001 L CNN
F 1 "33K" H 3418 3400 50  0000 L CNN
F 2 "" H 3350 3400 50  0001 C CNN
F 3 "~" H 3350 3400 50  0001 C CNN
	1    3350 3400
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 66E89EB7
P 3350 2800
F 0 "#PWR?" H 3350 2650 50  0001 C CNN
F 1 "VCC" H 3365 2973 50  0000 C CNN
F 2 "" H 3350 2800 50  0001 C CNN
F 3 "" H 3350 2800 50  0001 C CNN
	1    3350 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 66E8A1C8
P 4300 3900
F 0 "#PWR?" H 4300 3650 50  0001 C CNN
F 1 "GND" H 4305 3727 50  0000 C CNN
F 2 "" H 4300 3900 50  0001 C CNN
F 3 "" H 4300 3900 50  0001 C CNN
	1    4300 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:Microphone MK?
U 1 1 66E8CC65
P 3650 3750
F 0 "MK?" V 3383 3750 50  0001 C CNN
F 1 "?" V 3475 3750 50  0000 C CNN
F 2 "" V 3650 3850 50  0001 C CNN
F 3 "~" V 3650 3850 50  0001 C CNN
	1    3650 3750
	0    -1   -1   0   
$EndComp
Text GLabel 4050 2800 1    50   Input ~ 0
MCU_IN
Wire Wire Line
	3700 3100 4050 3100
Wire Wire Line
	4300 3100 4300 3150
Wire Wire Line
	4050 2800 4050 3100
Connection ~ 4050 3100
Wire Wire Line
	4050 3100 4300 3100
Wire Wire Line
	3350 2800 3350 3100
Wire Wire Line
	3500 3100 3350 3100
Connection ~ 3350 3100
Wire Wire Line
	3350 3100 3350 3300
Wire Wire Line
	4300 3550 4300 3750
Wire Wire Line
	3750 3500 4000 3500
Wire Wire Line
	4000 3500 4000 3350
Wire Wire Line
	3550 3500 3450 3500
Wire Wire Line
	3450 3750 3450 3500
Connection ~ 3450 3500
Wire Wire Line
	3450 3500 3350 3500
Wire Wire Line
	3850 3750 4300 3750
Connection ~ 4300 3750
Wire Wire Line
	4300 3750 4300 3900
$EndSCHEMATC
