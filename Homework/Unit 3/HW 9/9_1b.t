/*
 Student Name: Devdigvijay Singh
 Teacher Name: Ms. Xie
 Date: Nov 21, 2016
 Program: 9_1b.t
 Version: 1
 Description:
 Input: The minimum number to stop the count
 Process: Sets a variable to a number that counts down from 100 by 5s
	  and stops the count at the inputted minimum number
 Output: Displays numbers that count down from 100 by 5 until the
	 inputted minimum number.
 */

%declarations
var minimum : string
var minimum_int : int

%initialization
minimum := "0"

%input
loop
    put "Enter an integer at which you want the count to stop at between 50 and 100,\nincluding 50:"..
    get minimum
    if strintok (minimum) then
	minimum_int := strint (minimum)
	if minimum_int >= 100 or minimum_int < 50 then
	    put "Your value either exceeds 100 or is less than 50. Please try again."
	else
	    exit
	end if
    else
	put "You entered values other than integers. Please try again"
    end if
end loop

%process


%output
for decreasing decreaseBy5 : 100 .. 5 by 5
    exit when decreaseBy5 < minimum_int
    put decreaseBy5
end for

