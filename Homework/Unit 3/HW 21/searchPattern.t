var currentLine : string
var pos, inputStream : int
const pattern : string := "var"

open : inputStream, "search_pattern.txt", get

loop
    exit when eof (inputStream)
    get : inputStream, currentLine : *
    pos := 0
    pos := index (currentLine, pattern)
    if pos not= 0 then
	put currentLine
    end if
end loop
