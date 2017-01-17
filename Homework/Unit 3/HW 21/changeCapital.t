var currentLine : string
var streamInput, streamOutput : int

open : streamInput, "change_capital_input.txt", get
open : streamOutput, "change_capital_output.txt", put

loop
    exit when eof (streamInput)
    get : streamInput, currentLine : *
    if "A" <= currentLine (1) and currentLine (1) <= "Z" then
	currentLine := currentLine (1 .. 1 - 1) + (chr (ord (currentLine (1)) + (ord ("a") - ord ("A")))) + currentLine (1 + 1 .. *)
    end if
    for currentLetter : 2 .. length (currentLine) - 1 by 1
	if "A" <= currentLine (currentLetter) and currentLine (currentLetter) <= "Z" then
	    currentLine := currentLine (1 .. currentLetter - 1) + (chr (ord (currentLine (currentLetter)) + (ord ("a") - ord ("A")))) + currentLine (currentLetter + 1 .. *)
	end if
    end for
    if "A" <= currentLine (length (currentLine)) and currentLine (length (currentLine)) <= "Z" then
	currentLine := currentLine (1 .. length (currentLine) - 1) + (chr (ord (currentLine (length (currentLine))) + (ord ("a") - ord ("A")))) + currentLine (length (currentLine) + 1 .. *)
    end if
    put : streamOutput, currentLine
end loop

close : streamInput
close : streamOutput
