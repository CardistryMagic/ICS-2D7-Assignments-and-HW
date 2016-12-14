/*
 Student Name: Devdigvijay Singh
 Teacher Name: Ms. Xie
 Date: Dec. 12, 2016
 Program: 14_3.t
 Version: 1
 Description:
 Input: 10 real values
 Process: Finds the minimum of the inputted 10 values
 Output: Displays the minimum value
 */

%declaration
var realValues : array 1 .. 10 of real
var minimumValue : real
var minimumValueNumber : int

%initialization
minimumValue := maxint

%input/process
for currentValue : 1 .. 10 by 1
    put "Please enter the value #", currentValue, ": " ..
    get realValues (currentValue)
    if realValues (currentValue) < minimumValue then
	minimumValue := realValues (currentValue)
	minimumValueNumber := currentValue
    end if
end for

%output
put skip
put "The minimum is value is ", minimumValue, "."
