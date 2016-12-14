/*
 Student Name: Devdigvijay Singh
 Teacher Name: Ms. Xie
 Date: Dec. 12, 2016
 Program: 14_4.t
 Version: 1
 Description:
 Input: An unknown number of marks
 Process: Finds the mode in the array of marks
 Output: Displays the mode(s) of the inputted marks
 */

%declaration
var marks : array 0 .. 100 of int
var currentInput, maximumMode : int

%initialization
for currentValue : 0 .. 100 by 1
    marks (currentValue) := 0
end for
maximumMode := 0

%input
loop
    put "Enter a mark or a negative to quit: " ..
    get currentInput
    if currentInput < 0 then
	exit
    else
	marks (currentInput) += 1
    end if
end loop

%process
for currentValue2 : 0 .. 100 by 1
    if marks (currentValue2) > maximumMode then
	maximumMode := marks (currentValue2)
    end if
end for

%output
put skip
for currentValue3 : 0 .. 100 by 1
    if marks (currentValue3) = maximumMode then
	put currentValue3, "%: ", maximumMode, " times"
    end if
end for
