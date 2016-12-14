/*
 Student Name: Devdigvijay Singh
 Teacher Name: Ms. Xie
 Date: Nov 4, 2016
 Program: 7_2.t
 Version: 1
 Description:
 Input: The number of the food choice
 Process: According to the food choice, choose an answer best fit
 Output: Displays the price of the food choice
 */

%declaration
var optionNumber : int

const PR_1 : real := 2.5
const PR_2 : real := 2.5
const PR_3 : real := 3
const PR_4 : real := 3.5
const PR_5 : real := 5

%input from user
put "MENU"
delay (50)
put "1) juice, muffin, coffee"
delay (50)
put "2) cereal, toast, milk"
delay (50)
put "3) egg, toast, coffee"
delay (50)
put "4) banana, granola, milk"
delay (50)
put "5) grapefruit, bacon, eggs, coffee"
delay (50)
put "Please enter the number of the option you would like."
get optionNumber

%process/output
case optionNumber of
label 1 :
put "Your cost is $2.50"
label 2 :
put "Your cost is $2.50"
label 3 :
put "Your cost is %3.00"
label 4 :
put "Your cost is $3.50"
label 5 :
put "Your cost is $5.00"
end case
