%declaration
var number_1 : string
var number_1_int : int
var guess : string
var guess_int : int

%initialization
number_1 := "0"
guess := "0"

%input
put "User 2 shouldn't look right now."
loop
    put "User 1, please enter a number between 1 and 10 (inclusive):" ..
    get number_1
    if strintok (number_1) then
	number_1_int := strint (number_1)
	if number_1_int >= 1 and number_1_int <= 10 then
	    cls
	    put "Please switch over to User 2."
	    exit
	else
	    put "You did not follow the instructions.",skip
	end if
    else
	put "You entered a value other than an integer. \nPlease enter an integer only.",skip
    end if
end loop
loop
    put "Guess what number User 1 thought of. It is between 1 and 10 (inclusive)."
    get guess
    if strintok (guess) then
	guess_int := strint (guess)
	if guess_int = number_1_int then
	    put "You guessed correctly!"
	    exit
	else
	    put "That is incorrect. Please try again."
	end if
    else
	put "You entered a value other than an integer. \nPlease enter an integer between 1 and 10 (inclusive)."
    end if
end loop
