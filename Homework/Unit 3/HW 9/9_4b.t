/*
 Student Name: Devdigvijay Singh
 Teacher Name: Ms. Xie
 Date: Nov 21, 2016
 Program: 9_3.t
 Version: 1
 Description:
 Input: The number for the times table
 Process: Sets a variable to a number that counts down from 100 by 5s
 and stops the count at the inputted minimum number
 Output: Displays numbers that count down from 100 by 5 until the
 inputted minimum number.
 */

%declarations
var start_string : string
var start_int : int
var end_string : string
var end_int : int

%initialization
start_string := "0"
end_string := "0"

%input
loop
    put "Enter a positive integer for which you want to begin the range of the output: " ..
    get start_string
    if strintok (start_string) then
	start_int := strint (start_string)
	if start_int <= 0 then
	    put "The value you entered is either less than or equal to zero."
	else
	    exit
	end if
    else
	put "You entered values other than integers. Please try again."
    end if
end loop

loop
    put "Enter a positive integer for which you want to end the range of the output: " ..
    get end_string
    if strintok (end_string) then
	end_int := strint (end_string)
	if end_int <= 0 then
	    put "The value you entered is either less than or equal to zero."
	else
	    exit
	end if
    else
	put "You entered values other than integers. Please try again."
    end if
end loop


%process
cls
put "Enter a positive integer for which you want to start the range of the output: ", start_int
put "Enter a positive integer for which you want to end the range of the output: ", end_int

%output
for count : start_int .. end_int by 1
    put intstr (count) : length (end_string) + 1, " ", repeat ("*", count)
end for

