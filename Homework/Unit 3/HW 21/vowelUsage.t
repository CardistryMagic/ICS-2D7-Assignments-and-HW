var a, e, i, o, u, totalLetters, totalVowels : int := 0
var currentWord : string
var stream : int

open : stream, "vowel_usage.txt", get

loop
    exit when eof (stream)
    get : stream, currentWord
    for currentLetter : 1 .. length (currentWord) by 1
	if ord (Str.Upper (currentWord (currentLetter))) >= 65 and ord (Str.Upper (currentWord (currentLetter))) <= 90 then
	    totalLetters += 1
	    if Str.Lower (currentWord (currentLetter)) = "a" then
		totalVowels += 1
		a += 1
	    elsif Str.Lower (currentWord (currentLetter)) = "e" then
		totalVowels += 1
		e += 1
	    elsif Str.Lower (currentWord (currentLetter)) = "i" then
		totalVowels += 1
		i += 1
	    elsif Str.Lower (currentWord (currentLetter)) = "o" then
		totalVowels += 1
		o += 1
	    elsif Str.Lower (currentWord (currentLetter)) = "u" then
		totalVowels += 1
		u += 1
	    end if
	end if
    end for
end loop

put "a's = ", a, " ", round ((a / totalVowels) * 100), "% of vowels ", (a / totalVowels) * 100 : 0 : 1, "% of all letters used"
put "e's = ", e, " ", round ((e / totalVowels) * 100), "% of vowels ", (e / totalVowels) * 100 : 0 : 1, "% of all letters used"
put "i's = ", i, " ", round ((i / totalVowels) * 100), "% of vowels ", (i / totalVowels) * 100 : 0 : 1, "% of all letters used"
put "o's = ", o, " ", round ((o / totalVowels) * 100), "% of vowels ", (o / totalVowels) * 100 : 0 : 1, "% of all letters used"
put "u's = ", u, " ", round ((u / totalVowels) * 100), "% of vowels ", (u / totalVowels) * 100 : 0 : 1, "% of all letters used"

close : stream

