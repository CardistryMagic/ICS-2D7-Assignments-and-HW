%declaration
var answer_1 : string
var answer_1_int : int
var answer_2 : string
var answer_2_int : int
var answer_3 : string
var answer_3_int : int
var count : int

%initialization
answer_1 := "0"
answer_2 := "0"
answer_3 := "0"
count := 0

%input/process
loop
    put "Question 1:\nWhich of the following commands is for clearing the screen?"
    put "1) cls"
    put "2) clear"
    put "3) clearscreen"
    put "4) clsscreen"
    put "5) cs"
    get answer_1
    if strintok (answer_1) then
	answer_1_int := strint (answer_1)
	if answer_1_int = 1 then
	    cls
	    put "You answered correctly!"
	    count += 1
	    exit
	else
	    put "Your answer is incorrect. Please try again.", skip
	    count += 1
	end if
    else
	put "You entered a value other than an integer.\nPlease try again.", skip
	count += 1
    end if
end loop
loop
    put "Question 2:\nWhich of the following commands is used for determining the maximum height of an output window?"
    put "1) maxx"
    put "2) maxy"
    put "3) maxxy"
    put "4) maxyx"
    put "5) put"
    get answer_2
    if strintok (answer_2) then
	answer_2_int := strint (answer_2)
	if answer_2_int = 2 then
	    cls
	    put "You answered correctly!"
	    count += 1
	    exit
	else
	    put "Your answer is incorrect. Please try again.", skip
	    count += 1
	end if
    else
	put "You entered a value other than an integer.\nPlease try again.", skip
	count += 1
    end if
end loop
loop
    put "Question 3:\nWhich of the following data types can be used to hold integers?"
    put "1) int"
    put "2) real"
    put "3) int and real"
    put "4) real and boolean"
    put "5) char"
    get answer_3
    if strintok (answer_3) then
	answer_3_int := strint (answer_3)
	if answer_3_int = 3 then
	    cls
	    put "You answered correctly!"
	    count += 1
	    exit
	else
	    put "Your answer is incorrect. Please try again.", skip
	    count += 1
	end if
    else
	put "You entered a value other than an integer.\nPlease try again.", skip
	count += 1
    end if
end loop

%output
put "It took you ", count, " guesses to figure out the correct answers to all the questions."
