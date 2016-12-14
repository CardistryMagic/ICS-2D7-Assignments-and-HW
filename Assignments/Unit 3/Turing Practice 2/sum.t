/*
 Student Name: Devdigvijay Singh
 Teacher Name: Ms. Xie
 Date: Dec 5th, 2016
 Program: sum.t
 Version: 1
 Description:
 Input: A number to add all the reciprocals up to
 Process: Adds all the reciprocals up to the inputted number
 Output: Displays the sum of all the reciprocals
 */

%declarations
var inputNumber : string
var inputNumber_int : int
var sum : real

%initialization
inputNumber := "0"
inputNumber_int := 0
sum := 0

%input
loop
    put "Please enter an integer: " ..
    get inputNumber
    if strintok (inputNumber) then
	inputNumber_int := strint (inputNumber)
	if inputNumber_int <= 2 then
	    put "Your value is less than or equal to 2. Please try again."
	else
	    exit
	end if
    else
	put "You entered values other than integers. Please try again"
    end if
end loop

%process
for i : 1 .. inputNumber_int - 1 by 1
    sum := sum + i / (i + 1)
end for

%output
put sum : 0 : 2
