var input : string

procedure toUpper
    for currentCharacter : 1 .. length (input) by 1
	if ord (input (currentCharacter)) >= 97 and ord (input (currentCharacter)) <= 122 then
	    put chr (ord (input (currentCharacter)) - 32) ..
	else
	    put input (currentCharacter) ..
	end if
    end for
    put " "
end toUpper

loop
    put "Please enter the string that you would like to turn into uppercase: "
    get input : *
    toUpper
end loop
