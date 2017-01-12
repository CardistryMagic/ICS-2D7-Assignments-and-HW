var input, currentFileOutput : string
var count : int := 0
var stream : int

open : stream, "count_output.txt", put

put "Please enter the 10 words."

for i : 1 .. 10 by 1
    get input 
    count += length (input)
end for

put "The average length of the input is ", (count/10)
currentFileOutput := "The average length of the input is " + realstr((count/10),3)
put : stream, currentFileOutput
