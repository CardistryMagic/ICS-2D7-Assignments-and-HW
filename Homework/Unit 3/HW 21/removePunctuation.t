var allLines : flexible array 1 .. 0 of string
var count : int := 0
var inputStream, outputStream : int
var allCorrect : boolean

open : inputStream, "remove_punctuation.txt", get

loop
    exit when eof (inputStream)
    count += 1
    new allLines, count
    get : inputStream, allLines (count) : *
end loop

close : inputStream

open : outputStream, "remove_punctuation.txt", put

loop
    for currentLine : 1 .. count by 1
	for currentLetter : 2 .. length (allLines (currentLine)) - 1 by 1
	    exit when currentLetter > length (allLines (currentLine))
	    if ord (allLines (currentLine) (currentLetter)) >= 65 and ord (allLines (currentLine) (currentLetter)) <= 90 then
	    else
		if ord (allLines (currentLine) (currentLetter)) >= 97 and ord (allLines (currentLine) (currentLetter)) <= 122 then
		else
		    if ord (allLines (currentLine) (currentLetter)) = 32 then
		    else
			if strintok (allLines (currentLine) (currentLetter)) then
			else
			    allLines (currentLine) := allLines (currentLine) (1 .. currentLetter - 1) + allLines (currentLine) (currentLetter + 1 .. *)
			end if
		    end if
		end if
	    end if
	end for
	if ord (allLines (currentLine) (1)) >= 65 and ord (allLines (currentLine) (1)) <= 90 then
	else
	    if ord (allLines (currentLine) (1)) >= 97 and ord (allLines (currentLine) (1)) <= 122 then
	    else
		if ord (allLines (currentLine) (1)) = 32 then
		else
		    if strintok (allLines (currentLine) (1)) then
		    else
			allLines (currentLine) := allLines (currentLine) (1 + 1 .. *)
		    end if
		end if
	    end if
	end if
	if ord (allLines (currentLine) (length (allLines (currentLine)))) >= 65 and ord (allLines (currentLine) (length (allLines (currentLine)))) <= 90 then
	else
	    if ord (allLines (currentLine) (length (allLines (currentLine)))) >= 97 and ord (allLines (currentLine) (length (allLines (currentLine)))) <= 122 then
	    else
		if ord (allLines (currentLine) (length (allLines (currentLine)))) = 32 then
		else
		    if strintok (allLines (currentLine) (length (allLines (currentLine)))) then
		    else
			allLines (currentLine) := allLines (currentLine) (1 .. length (allLines (currentLine)) - 1)
		    end if
		end if
	    end if
	end if
    end for
    allCorrect := true
    for currentLine : 1 .. count by 1
	for currentLetter : 1 .. length (allLines (currentLine)) by 1
	    if ord (allLines (currentLine) (currentLetter)) >= 65 and ord (allLines (currentLine) (currentLetter)) <= 90 then
	    else
		if ord (allLines (currentLine) (currentLetter)) >= 97 and ord (allLines (currentLine) (currentLetter)) <= 122 then
		else
		    if ord (allLines (currentLine) (currentLetter)) = 32 then
		    else
			if strintok (allLines (currentLine) (currentLetter)) then
			else
			    allCorrect := false
			end if
		    end if
		end if
	    end if
	end for
    end for
    exit when allCorrect
end loop

for currentOutputLine : 1 .. upper (allLines) by 1
    put : outputStream, allLines (currentOutputLine)
end for

close : outputStream
