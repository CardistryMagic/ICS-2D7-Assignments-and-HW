var totalWordLength, wordCount : int := 0
var currentWord : string
var average : real
var inputStream, outputStream : int

open : inputStream, "average_word_input.txt", get

loop
    exit when eof (inputStream)
    wordCount += 1
    get : inputStream, currentWord
    totalWordLength += length (currentWord)
end loop

close : inputStream

average := totalWordLength / wordCount

open : outputStream, "average_word_output.txt", put

put "The average length is ", average : 0 : 2, "."

put : outputStream, "The average length is " + frealstr (average, 0, 2) + "."
