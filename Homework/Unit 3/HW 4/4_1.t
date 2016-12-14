% Name: Devdigvijay Singh
% Date: Nov 1, 2016
% Program: 4_1.t
% Version: 1
% Description: The program will prompt the user to enter the capital of Canada
% and then output whether or not they are correct.

%declaration
var capitalInput : string

const CAPITAL_ANSWER_1 := "Ottawa"
const CAPITAL_ANSWER_2 := "OTTAWA"
const CAPITAL_ANSWER_3 := "ottawa"

%input from the user
put "Enter the capital of Canada."
get capitalInput

%output / process

if capitalInput = CAPITAL_ANSWER_1 then
    put "You got it correct!"
else
    if capitalInput = CAPITAL_ANSWER_2 then
	put "You got it correct!"
    else
	if capitalInput = CAPITAL_ANSWER_3 then
	    put "You got it correct!"
	else
	    put "That is incorrect."
	end if
    end if
end if
