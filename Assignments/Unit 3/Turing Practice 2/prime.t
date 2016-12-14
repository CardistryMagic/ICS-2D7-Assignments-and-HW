/*
 Student Name: Devdigvijay Singh
 Teacher Name: Ms. Xie
 Date: Dec 5th, 2016
 Program: prime.t
 Version: 1
 Description:
 Input: Integers a and b to find all the prime numbers in between
 Process: Finds all the prime numbers in between a and b
 Output: Displays all the prime numbers between a and b
 */

%declarations
var a_string, b_string : string
var a_int, b_int, body2Font, headingFont, i2continue, input_int, mod_int, yTextLocation : int

%initialization
headingFont := Font.New ("Cambria:20:underline")
body2Font := Font.New ("Cambria:12")
yTextLocation := 3

procedure input
    cls
    Font.Draw ("Input", 5, maxy - 25, headingFont, black)
end input

%input
setscreen ("graphics:720;405")
input
Font.Draw ("Please enter integer a for the prime number search: ", 5, maxy - 45, body2Font, black)
loop
    locate (4, 2)
    get a_string
    if strintok (a_string) then
	a_int := strint (a_string)
	if a_int < 0 then
	    input
	    Font.Draw ("The value you entered is negative. Please try again.", 5, maxy - 45, body2Font, black)
	    delay (1000)
	    input
	    Font.Draw ("Please enter integer a for the prime number search: ", 5, maxy - 45, body2Font, black)
	else
	    exit
	end if
    else
	input
	Font.Draw ("You entered characters other than integers. Please try again.", 5, maxy - 45, body2Font, black)
	delay (1000)
	input
	Font.Draw ("Please enter integer a for the prime number search: ", 5, maxy - 45, body2Font, black)
    end if
end loop
cls
input
Font.Draw ("Please enter integer b for the prime number search: ", 5, maxy - 45, body2Font, black)
loop
    locate (4, 2)
    get b_string
    if strintok (b_string) then
	b_int := strint (b_string)
	if a_int < 0 then
	    input
	    Font.Draw ("You entered characters other than integers. Please try again.", 5, maxy - 45, body2Font, black)
	    delay (1000)
	    input
	    Font.Draw ("Please enter integer b for the prime number search: ", 5, maxy - 45, body2Font, black)
	else
	    exit
	end if
    else
	input
	Font.Draw ("You entered characters other than integers. Please try again.", 5, maxy - 45, body2Font, black)
	delay (1000)
	input
	Font.Draw ("Please enter integer b for the prime number search: ", 5, maxy - 45, body2Font, black)
    end if
end loop


%process/output
cls
Font.Draw ("Answer", round (maxx / 2), maxy - 25, headingFont, black)
if a_int < b_int then
    if a_int = 1 or a_int = 0 or a_int = 2 then
	a_int := 2
	locate (yTextLocation, 1)
	yTextLocation += 1
	put " ", a_int
    end if
    locate (yTextLocation, 1)
    for i : a_int .. b_int by 1
	for i2 : 2 .. i div 2 + 1 by 1
	    mod_int := i mod i2
	    if mod_int = 0 then
		i2continue := i2
		exit
	    end if
	    i2continue := i2
	end for
	if i2continue = i div 2 + 1 and mod_int > 0 then
	    put " ", i
	end if
    end for
    Font.Draw ("Answer", round (maxx / 2), maxy - 25, headingFont, black)
else
    if a_int > b_int then
	if b_int = 1 or b_int = 0 then
	    b_int := 2
	    locate (yTextLocation, 1)
	    yTextLocation += 1
	    put " ", a_int
	end if
	locate (yTextLocation, 1)
	for i : b_int .. a_int by 1
	    for i2 : 2 .. i div 2 + 1 by 1
		mod_int := i mod i2
		if mod_int = 0 then
		    i2continue := i2
		    exit
		end if
		i2continue := i2
	    end for
	    if i2continue = i div 2 + 1 and mod_int > 0 then
		put " ", i
	    end if
	end for
	Font.Draw ("Answer", round (maxx / 2), maxy - 25, headingFont, black)
    else
	if a_int = b_int then
	    cls
	    Font.Draw ("Both of the entered values are the same, so there are no prime numbers in between them.", 5, maxy - 25, body2Font, black)
	else
	end if
    end if
end if
