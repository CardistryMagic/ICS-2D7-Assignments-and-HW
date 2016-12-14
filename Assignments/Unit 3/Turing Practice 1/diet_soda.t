/*
 Student Name: Devdigvijay Singh
 Teacher Name: Ms. Xie
 Date: Nov 4, 2016
 Program: diet_soda.t
 Version: 1
 Description:
 Input: The amount of artificial sweetener to kill a mouse, the weight of the
 mouse, and the weight of the dieter
 Process: Calculate:
	     - The amount of diet soda that can be consumed by the dieter before dying
 Output: Displays a chart showing the amount of artificial sweetener to kill
 a mouse, the weight of the mouse, the weight of the dieter, and the amount
 of consumable diet soda before dying by the dieter
 */

%declaration
var amountOfSweetenerToKillAMouse : real
var weightOfMouse : real
var weightOfDieter : real
var amountOfDietSodaToKillDieter : real

%initialization
const DIET_SODA_TO_ARTIFICIAL_SWEETENER : real := 0.0001

%input
put "Please enter the weight of the mouse in grams."
get weightOfMouse
put "Please enter the amount of sweetener, in mL, needed to kill a mouse that weighs ", weightOfMouse, " grams."
get amountOfSweetenerToKillAMouse
put "Please enter the weight of the dieter in kilograms."
get weightOfDieter

%process
amountOfDietSodaToKillDieter := (amountOfSweetenerToKillAMouse / weightOfMouse) * weightOfDieter * 1000 - 0.1
%output
cls
colorback (yellow)
locate (1, 1)
color (1)
put "Amount of sweetener needed to kill a mouse:"
locate (1, 51)
color (red)
put amountOfSweetenerToKillAMouse, " mL"
locate (2, 1)
color (1)
put "Weight of the mouse:"
locate (2, 51)
color (red)
put weightOfMouse, " grams"
locate (3, 1)
color (1)
put "Weight of the dieter:"
locate (3, 51)
color (red)
put weightOfDieter, " kilograms"
locate (5, 1)
color (1)
put "Amount of diet soda needed to kill the dieter:"
locate (5, 51)
color (red)
put amountOfDietSodaToKillDieter + 0.1, " mL"
locate (6, 1)
color (1)
put "Amount of diet soda consumable by the dieter:"
locate (6, 51)
color (red)
put amountOfDietSodaToKillDieter, " mL"
