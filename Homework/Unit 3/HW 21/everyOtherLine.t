var file1Choice, file2Choice, currentLine : string := ""
var streamInput, streamOutput : int

put "Please enter the name of the input file: " ..
get file1Choice : *

put "Please enter the name of the output file: " ..
get file2Choice : *

open : streamInput, file1Choice, get
open : streamOutput, file2Choice, put

loop
    exit when eof (streamInput)
    get : streamInput, currentLine : *
    exit when eof (streamInput)
    get : streamInput, currentLine : *
    put : streamOutput, currentLine
end loop

close : streamInput
close : streamOutput
