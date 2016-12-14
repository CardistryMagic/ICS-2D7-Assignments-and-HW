%declaration
var inputLength, maximumLength, initialSum, tempSum, rowSumValid, columnSumValid, diagonalSumValid : int

%initialization
maximumLength := 0
initialSum := 0
tempSum := 0
rowSumValid := 0
columnSumValid := 0
diagonalSumValid := 0

setscreen ("screen:50;100")

%input
put "Please enter the length of the square: " ..
get inputLength

%process
var squareNumbers : array 1 .. inputLength, 1 .. inputLength of int

for currentRow : 1 .. inputLength by 1
    for currentColumn : 1 .. inputLength by 1
	put "Please enter the number for row ", currentRow, ", column ", currentColumn, ": " ..
	get squareNumbers (currentRow, currentColumn)
	if length (intstr (squareNumbers (currentRow, currentColumn))) > maximumLength then
	    maximumLength := length (intstr (squareNumbers (currentRow, currentColumn)))
	end if
	if currentRow = 1 then
	    initialSum += squareNumbers (1, currentColumn)
	end if
    end for
end for

cls

put "SQUARE"
put ""

for displayRow : 1 .. inputLength by 1
    for displayColumn : 1 .. inputLength - 1 by 1
	put intstr (squareNumbers (displayRow, displayColumn)) : maximumLength + 2 ..
    end for
    put (intstr (squareNumbers (displayRow, inputLength))) : maximumLength + 2
end for

put ""
put "SUMS"

for currentRowSum : 1 .. inputLength by 1
    for currentColumnSum : 1 .. inputLength by 1
	tempSum += squareNumbers (currentRowSum, currentColumnSum)
    end for
    if tempSum not= initialSum then
	rowSumValid := 1
    end if
    put "Row ", currentRowSum, ": ", tempSum
    tempSum := 0
end for

tempSum := 0
put ""

for currentColumnSum2 : 1 .. inputLength by 1
    for currentRowSum2 : 1 .. inputLength by 1
	tempSum += squareNumbers (currentRowSum2, currentColumnSum2)
    end for
    if tempSum not= initialSum then
	columnSumValid := 1
    end if
    put "Column ", currentColumnSum2, ": ", tempSum
    tempSum := 0
end for

tempSum := 0
put ""

for currentDiagonalSum : 1 .. inputLength by 1
    tempSum += squareNumbers (currentDiagonalSum, currentDiagonalSum)
end for
if tempSum not= initialSum then
    diagonalSumValid := 1
end if

put "Diagonal 1: ", tempSum

tempSum := 0

for decreasing currentDiagonalSum2 : inputLength .. 1 by 1
    tempSum += squareNumbers (currentDiagonalSum2, currentDiagonalSum2)
end for
if tempSum not= initialSum then
    diagonalSumValid := 1
end if

put "Diagonal 2: ", tempSum

%output
put ""
put "CONCLUSION"

if rowSumValid = 1 or columnSumValid = 1 or diagonalSumValid = 1 then
    put "The square  you entered is not a magic square."
else
    put "The square you entered is a magic square."
end if
