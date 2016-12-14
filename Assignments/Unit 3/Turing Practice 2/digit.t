/*
 Student Name: Devdigvijay Singh
 Teacher Name: Ms. Xie
 Date: Dec 5th, 2016
 Program: digit.t
 Version: 1
 Description:
 Input: An integer
 Process: Finds all the digits of the integer
 Output: Displays all the digits of the integer
 */

%declarations
var digit,input_string : string
var body1Font,body2Font,body3Font,headingFont,input_int,length_input,yTextLocation : int

%initialization
headingFont := Font.New ("Cambria:20:underline")
body2Font := Font.New ("Cambria:12")
yTextLocation := 25

procedure input
    cls
    Font.Draw ("Input", 5, maxy - 25, headingFont, black)
end input

%input
setscreen ("graphics:720;405")
input
Font.Draw ("Please enter an integer that you want to see the digits of: ", 5, maxy - 45, body2Font, black)
loop
    locate (4, 2)
    get input_string
    if strintok (input_string) then
	input_int := strint (input_string)
	exit
    else
	input
	Font.Draw ("You entered characters other than integers. Please try again.", 5, maxy - 45, body2Font, black)
	delay (1000)
	input
	Font.Draw ("Please enter an integer that you want to see the digits of: ", 5, maxy - 45, body2Font, black)
    end if
end loop

%process/output
cls
Font.Draw ("Digits", 5, maxy - 25, headingFont, black)

length_input := length (input_string)
for decreasing current_digit : length_input .. 1 by 1
    yTextLocation += 20
    digit := input_string (current_digit)
    Font.Draw (digit, 5, maxy - yTextLocation, body2Font, black)
end for
