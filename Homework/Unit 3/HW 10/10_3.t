/*
 Student Name: Devdigvijay Singh
 Teacher Name: Ms. Xie
 Date: Nov 21, 2016
 Program: 9_3b.t
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

%initialization/process
answer_input := "0"
randint (random_int, 1, 50)

%input/output
loop
    put "Guess an integer in between 1 and 50, inclusive: " ..
    get answer_input
    if strintok (answer_input) then
	answer_input_int := strint (answer_input)
	if answer_input_int = random_int then
	    put "CORRECT!"
	    exit
	else
	    if answer_input_int > random_int then
		put "HIGH"
	    else
		put "LOW"
	    end if
	end if
    else
	put "You entered values other than integers. Please try again."
    end if
end loop



