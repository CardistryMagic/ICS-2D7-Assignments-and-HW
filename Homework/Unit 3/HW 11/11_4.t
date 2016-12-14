/*
 Student Name: Devdigvijay Singh
 Teacher Name: Ms. Xie
 Date: Nov 21, 2016
 Program: 11_4.t
 Version: 1
 Description:
 Input: The minimum number to stop the count
 Process: Sets a variable to a number that counts down from 100 by 5s
 and stops the count at the inputted minimum number
 Output: Displays numbers that count down from 100 by 5 until the
 inputted minimum number.
 */

%declarations
var upperLeftRow : string
var upperLeftRow_int : int
var upperLeftColumn : string
var upperLeftColumn_int : int
var lowerRightRow : string
var lowerRightRow_int : int
var lowerRightColumn : string
var lowerRightColumn_int : int
var character : string
var character_char : char

%initialization/process

%input/output
loop
    put "Enter the row of the upper left corner: " ..
    get upperLeftRow
    if strintok (upperLeftRow) then
	upperLeftRow_int := strint (upperLeftRow)
	if upperLeftRow_int < 0 or upperLeftRow_int > maxrow then
	    put "Your values exceed the minimum or maximum values."
	else
	    exit
	end if
    else
	put "You entered values other than integers. Please try again."
    end if
end loop
loop
    put "Enter the column of the upper left corner: " ..
    get upperLeftColumn
    if strintok (upperLeftColumn) then
	upperLeftColumn_int := strint (upperLeftColumn)
	if upperLeftColumn_int < 0 or upperLeftColumn_int > maxcol then
	    put "Your values exceed the minimum or maximum values."
	else
	    exit
	end if
    else
	put "You entered values other than integers. Please try again."
    end if
end loop
loop
    put "Enter the row of the lower right corner: " ..
    get lowerRightRow
    if strintok (lowerRightRow) then
	lowerRightRow_int := strint (lowerRightRow)
	if lowerRightRow_int < 0 or lowerRightRow_int > maxrow then
	    put "Your values exceed the minimum or maximum values."
	else
	    exit
	end if
    else
	put "You entered values other than integers. Please try again."
    end if
end loop
loop
    put "Enter the column of the lower right corner: " ..
    get lowerRightColumn
    if strintok (lowerRightColumn) then
	lowerRightColumn_int := strint (lowerRightColumn)
	if lowerRightColumn_int < 0 or lowerRightColumn_int > maxcol then
	    put "Your values exceed the minimum or maximum values."
	else
	    exit
	end if
    else
	put "You entered values other than integers. Please try again."
    end if
end loop
loop
    put "Enter the character that you would like to represent the rectangle: " ..
    get character
    if length (character) = 1 then
	character_char := character
	exit
    else
	put "You entered more or less than 1 character."
    end if
end loop
cls
locate (upperLeftColumn_int, 1)
put repeat (" ", upperLeftRow_int - 1), repeat (character, (lowerRightColumn_int - upperLeftColumn_int) + 1)
for LeftColumn : upperLeftRow_int .. lowerRightRow_int - 1 by 1
    put repeat (" ", upperLeftRow_int - 1), character, repeat (" ", (lowerRightColumn_int - upperLeftColumn_int) - 1), character
end for
put repeat (" ", upperLeftRow_int - 1), repeat (character, (lowerRightColumn_int - upperLeftColumn_int) + 1)
