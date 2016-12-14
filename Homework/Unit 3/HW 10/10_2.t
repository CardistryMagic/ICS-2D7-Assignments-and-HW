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
var answer_input : string
var answer_input_int : int
var random_int : int
var first_addition_number : int
var second_addition_number : int

%initialization/process
answer_input := "0"
randint (random_int, 1, 100)
randint (first_addition_number, 1, random_int)
second_addition_number := random_int - first_addition_number

%input/output
loop
    put first_addition_number, " + ", second_addition_number, " = " ..
    get answer_input
    if strintok (answer_input) then
	answer_input_int := strint (answer_input)
	if answer_input_int = random_int then
	    put "Nice job! You got it correct!"
	    exit
	else
	    put "That is incorrect. Please try again."
	end if
    else
	put "You entered values other than integers. Please try again."
    end if
end loop



