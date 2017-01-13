var word, letter, replacementLetter : string := ""
var pos : int

put "Enter a word: " ..
get word
put "Enter a letter: " ..
get letter
put "Enter a replacement letter: " ..
get replacementLetter
loop
    pos := index (word, letter)
    exit when pos = 0
    if pos = 1 then
	word := replacementLetter + word ((pos + 1) .. *)
    else
	word := word (1 .. (pos - 1)) + replacementLetter + word ((pos + 1) .. *)
    end if
end loop
put "New 'word' is ", word

