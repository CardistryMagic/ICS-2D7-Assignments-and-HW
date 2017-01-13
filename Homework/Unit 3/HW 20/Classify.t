var input : string

put "Please enter a string " ..
get input : *

for currentLetter : 1 .. length (input) by 1
    if strintok (input (currentLetter)) then
	put input (currentLetter), " is a number"
    elsif Str.Lower(input (currentLetter)) = "a" or Str.Lower(input (currentLetter)) = "e" or Str.Lower(input (currentLetter)) = "i" or Str.Lower(input (currentLetter)) = "o" or Str.Lower(input (currentLetter)) = "u" then
	put input (currentLetter), " is a vowel"
    elsif ord(input (currentLetter)) >= 98 and ord(input (currentLetter)) <= 122 then
	put input (currentLetter), " is a consonant"
    elsif ord(input (currentLetter)) >= 65 and ord(input (currentLetter)) <= 90 then
	put input (currentLetter), " is a consonant"
    else
	put input (currentLetter), " is any other character"
    end if
end for
