/*
 Student Name: Devdigvijay Singh
 Teacher Name: Ms. Xie
 Date: Nov 21, 2016
 Program: 10_1.t
 Version: 1
 Description:
 Input: There is no input
 Process: Assign the colors of the border and fill of the circle
 Output: Draw a circle with a random color fill and border
 */

%declarations
var randomColor : int
var randomColor2 : int

%initialization

%input

%process
randomColor := Rand.Int (1, 255)
randomColor2 := Rand.Int (1, 255)

%output
drawfilloval (round (maxx / 2), round (maxy / 2), round (maxy / 2), round (maxy / 2), randomColor)
drawoval (round (maxx / 2), round (maxy / 2), round (maxy / 2), round (maxy / 2), randomColor2)
