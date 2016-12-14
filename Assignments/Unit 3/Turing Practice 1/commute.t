/*
 Student Name: Devdigvijay Singh
 Teacher Name: Ms. Xie
 Date: Nov 4, 2016
 Program: commute.t
 Version: 1
 Description:
 Input: Distance in miles of the commute, the automobile's fuel efficiency 
 in miles per gallon, and the price per gallon of gasoline
 Process: Calculate:
 - Cost of gasoline for the commute
 Output: Displays a chart showing the distance in miles of the commute, the automobile's fuel efficiency 
 in miles per gallon, the price per gallon of gasoline, and the price of gasoline for the whole commute
 metric ton
 */

%declaration
var distance : real
var efficiency : real
var pricePerGallon : real
var commuteCost : real

%input
put "Please input the distance of the commute in miles."
get distance
put "Please input the automobile's fuel efficiency in miles per gallon."
get efficiency
put "Please input the price per gallon."
get pricePerGallon

%process
commuteCost := distance / efficiency * pricePerGallon

%output
cls
colorback (yellow)
locate (1, 1)
color (1)
put "Distance:"
locate (1, 41)
color (red)
put distance, " miles"
locate (2,1)
color (1)
put "Automobile's fuel efficiency:"
locate (2, 41)
color (red)
put efficiency, " miles per gallon"
locate (3,1)
color (1)
put "Price of gasoline:"
locate (3, 41)
color (red)
put "$", pricePerGallon:0:2, " per gallon"
locate (5,1)
color (1)
put "Cost of gasoline for the whole commute:"
locate (5, 41)
color (red)
put "$", commuteCost:0:2
