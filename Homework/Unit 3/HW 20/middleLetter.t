var currentInput, middleLetter, fileOutput : string := ""
var stream, stream2 : int

open : stream, "list.txt", get
open : stream2, "middleLetter_output.txt", put

loop
    put "Enter word "..
    get : stream, currentInput : *
    put currentInput
    if length (currentInput) mod 2 = 0 then
	put "The word has an even number of letters"
	put : stream2, "The word has an even number of letters"
    else
	middleLetter := currentInput (ceil (length (currentInput) / 2))
	put "The middle letter is ", middleLetter
	fileOutput := "The middle letter is " + middleLetter
	put : stream2, fileOutput
    end if
    exit when eof (stream)
end loop
