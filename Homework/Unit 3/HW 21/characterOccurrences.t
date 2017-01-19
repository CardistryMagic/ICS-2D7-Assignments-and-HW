var fileNameInput, currentWord, searchLetterInput : string := ""
var totalCharacters, characterOccurences : int := 0
var inputStream, outputStream : int

put "Please enter the file name that you would like to open: " ..
get fileNameInput : *

put "Please enter the character you would like to count occurrences for: "
get searchLetterInput

open : inputStream, fileNameInput, get

loop
    exit when eof (inputStream)
    get : inputStream, currentWord
    for currentLetter : 1 .. length (currentWord) by 1
	totalCharacters += 1
	if currentWord (currentLetter) = searchLetterInput then
	    characterOccurences += 1
	end if
    end for
end loop

close : inputStream

open : outputStream, "character_occurrences.txt", put

put "The character '", searchLetterInput, "' occurs ", characterOccurences, " times or ", ((characterOccurences / totalCharacters) * 100) : 0 : 2, "% of all letters used."

put : outputStream, "The character '" + searchLetterInput + "' occurs " + intstr (characterOccurences) + " times or " + realstr ((characterOccurences / totalCharacters), 2) + "% of all letters used."

close : outputStream
