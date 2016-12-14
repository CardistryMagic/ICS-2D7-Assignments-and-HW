/*
 Student Name: Devdigvijay Singh
 Teacher Name: Ms. Xie
 Date: Nov 4, 2016
 Program: 7_2.t
 Version: 1
 Description:
 Input: The number of the multiple choice answer
 Process: According the answer, the program chooses a message to display
 Output: Displays the message that best fits a response to the answer
 */

%declaration
var answerInput : int

const ANSWER_REAL : real := 2

%input from user
put "Question 1:"
put "Which of the following commands is used to clear the screen in Turing 4.1.1?"
put "1) clear"
put "2) cls"
put "3) clearscreen"
put "4) clsscrn"
put "5) clsscreen"
put "Enter the number of your choice."
get answerInput

%process/output
case answerInput of
label 1 :
put "Not that obvious!"
label 2 :
put "Nice job! You got it correct."
label 3 :
put "It's not that complicated!"
label 4 :
put "Sorry, nope."
end case
