/*
 Student Name: Devdigvijay Singh
 Teacher Name: Ms. Xie
 Date: Nov 21, 2016
 Program: 9_4c.t
 Version: 1
 Description:
 Input: The start and end numbers for the range and the character to
	represent the numbers in the range
 Process: Clears screen and outputs the inputs
 Output: The number range with the inputted character to represent each
	 number
 */

%declarations
var start_string : string
var start_int : int
var end_string : string
var end_int : int
var character_string : string
var character_char : char

%initialization
start_string := "0"
end_string := "0"
character_string := "*"

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

loop
    put "Enter a character that you would like to represent your number range: " ..
    get character_string
    if length (character_string) > 1 then
	put "You entered more than one character. Please try again."
    else
	character_char := character_string
	exit
    end if
end loop

%process
cls
put "Enter a positive integer for which you want to start the range of the output: ", start_int
put "Enter a positive integer for which you want to end the range of the output: ", end_int
put "Enter a character that you would like to represent your number range: '", character_string, "'"

%output
for count : start_int .. end_int by 1
    put intstr (count) : length (end_string) + 1, " ", repeat (character_char, count)
end for

