%declaration
var age : string

%initialization
age := "0"

%input
loop
    put "Guess what the age of the creator of this program is:"
    get age
    if strintok (age) then
	if age = "14" then
	    put "You guessed correct!"
	    exit
	else
	    put "That is incorrect. Please try again."
	end if
    else
	put "You entered values other than integers. Please try again"
    end if
end loop

