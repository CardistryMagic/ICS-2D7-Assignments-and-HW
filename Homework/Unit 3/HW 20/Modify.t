var input, numbers, vowels, consonants, otherCharacters : string := ""

put "Please enter a string " ..
get input : *

for currentLetter : 1 .. length (input) by 1
    if strintok (input (currentLetter)) then
	numbers += input (currentLetter)
    elsif Str.Lower(input (currentLetter)) = "a" or Str.Lower(input (currentLetter)) = "e" or Str.Lower(input (currentLetter)) = "i" or Str.Lower(input (currentLetter)) = "o" or Str.Lower(input (currentLetter)) = "u" then
	vowels += input (currentLetter)
    elsif ord(input (currentLetter)) >= 98 and ord(input (currentLetter)) <= 122 then
	consonants += input (currentLetter)
    elsif ord(input (currentLetter)) >= 65 and ord(input (currentLetter)) <= 90 then
	consonants += input (currentLetter)
    else
	otherCharacters += input (currentLetter)
    end if
end for

put "numbers - ", numbers
put "vowels - ", vowels
put "consonants - ", consonants
put "any other character - ", otherCharacters
