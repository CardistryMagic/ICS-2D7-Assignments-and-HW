var input, currentFileOutput : string
var stream : int

open : stream, "firstLastLetter_output.txt", put

put "Enter a series of words one to a line, end with 'wow'"

loop
    put "Enter word " ..
    get input
    exit when input = "wow"
    if length (input) = 1 then
	put "Word has only 1 character"
	currentFileOutput := "Word has only 1 character"
	put : stream, currentFileOutput
    else
	put input (1), input (length (input))
	currentFileOutput := input (1) + input (length (input))
	put : stream, currentFileOutput
    end if
end loop
