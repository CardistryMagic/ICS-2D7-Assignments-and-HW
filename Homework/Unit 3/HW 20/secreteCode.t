var input, finalOutput : string := ""
var stream : int

open : stream, "secreteCode_output.txt", put

put "Please enter the word to convert: " ..
get input : *

for currentLetter : 1 .. length (input) by 1
    if ord (input (currentLetter)) = 122 then
	finalOutput += "a"
    elsif ord (input (currentLetter)) >= 97 and ord (input (currentLetter)) <= 121 then
	finalOutput += chr(ord (input (currentLetter)) + 1)
    else
    finalOutput += input (currentLetter)
    end if
end for

put finalOutput

put : stream, finalOutput
