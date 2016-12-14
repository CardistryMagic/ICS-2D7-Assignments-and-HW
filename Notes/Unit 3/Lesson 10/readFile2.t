var stream : int
var menu : array 1 .. 10 of string
open : stream, "menu3.txt", get %notice the file has to be in the "get" mode

for i : 1 .. 10
    get : stream, menu (i)
    put menu (i)
end for
