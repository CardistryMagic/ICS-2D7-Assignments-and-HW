var currentLineInput, currentLineOutput : string
var streamInput, streamOutput : int

open : streamInput, "coded_message_input.txt", get
assert (streamInput) > 0

open : streamOutput, "Alien.txt", put
assert (streamOutput) > 0

loop
    exit when eof (streamInput)
    get : streamInput, currentLineInput : *
    currentLineOutput := ""
    for currentLetter : 1 .. length (currentLineInput)
	if strintok (currentLineInput (currentLetter)) then
	    if strint (currentLineInput (currentLetter)) not= 0 then
		currentLineOutput += Str.Lower(chr (strint(currentLineInput (currentLetter)) + 65))
	    else
		currentLineOutput += "0"
	    end if
	elsif ord (Str.Upper (currentLineInput (currentLetter))) >= 65 and ord (Str.Upper (currentLineInput (currentLetter))) <= 90 then
	    if ord (Str.Upper (currentLineInput (currentLetter))) not= 90 then
		currentLineOutput += chr (ord (currentLineInput (currentLetter)) + 1)
	    elsif ord (currentLineInput (currentLetter)) = 90 then
		currentLineOutput += "A"
	    else
		currentLineOutput += "a"
	    end if
	else
	    currentLineOutput += currentLineInput (currentLetter)
	end if
    end for
    put : streamOutput, currentLineOutput
end loop

close : streamInput
close : streamOutput
