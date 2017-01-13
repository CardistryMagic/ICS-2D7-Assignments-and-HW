var input, currentOutput, completeFileOutput : string := ""
var stream : int

open : stream, "reverse_output.txt", put

put "Please enter a word or 'end' to quit."

loop
    put "Enter a word " ..
    get input : *
    exit when input = "end"
    currentOutput := ""
    for decreasing currentLetter : length (input) .. 1
	currentOutput += input (currentLetter)
    end for
    put "The reverse word is ", currentOutput
    completeFileOutput := "The reverse word is " + currentOutput
    put : stream, completeFileOutput
    if currentOutput = input then
	put "This word is a palindrome"
	put : stream, "This word is a palindrome"
    end if
end loop
