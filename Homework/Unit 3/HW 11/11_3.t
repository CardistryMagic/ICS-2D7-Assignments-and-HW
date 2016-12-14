var letterAsciiTextNumber : int := 97
var spaces : int
var colorRand : int

loop
    colorRand := Rand.Int (1, 16)
    color (colorRand)
    spaces := letterAsciiTextNumber - 97
    put repeat (" ", spaces), chr (letterAsciiTextNumber)..
    letterAsciiTextNumber += 1
    delay (500)
    cls
    exit when letterAsciiTextNumber = 123
end loop
