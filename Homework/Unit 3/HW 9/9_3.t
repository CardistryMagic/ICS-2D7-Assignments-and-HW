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
var n : string
var n_int : int
var product : int

%initialization
n := "0"

%input
loop
    put "Enter a positive integer for which you want a times table: " ..
    get n
    if strintok (n) then
	n_int := strint (n)
	if n_int <= 0 then
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
put "Enter a positive integer for which you want a times table: ", n_int

%output
for count : 1 .. n_int by 1
    put n_int, " X ", count, " = ", count * n_int
    exit when count = n_int
end for

