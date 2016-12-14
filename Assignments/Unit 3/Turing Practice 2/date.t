/*
 Student Name: Devdigvijay Singh
 Teacher Name: Ms. Xie
 Date: Dec 5th, 2016
 Program: date.t
 Version: 1
 Description:
 Input: A date in numerical form
 Process: Finds the word form of the date inputted
 Output: Displays the worded form of the inputted date
 */

%declarations
var day_string, input_string, month_string, year_string : string := "0"
var body1Font, body2Font, day_int, headingFont, input_int, month_int, year_int : int := 0

%initialization
headingFont := Font.New ("Cambria:20:underline,italic")
body1Font := Font.New ("Cambria:14")
body2Font := Font.New ("Constantia:12")

procedure legend
    cls
    Font.Draw ("Legend", 5, maxy - 25, headingFont, black)
    Font.Draw ('"2 15 66"', 5, maxy - 50, body1Font, black)
    Font.Draw ("would mean", 5, maxy - 70, body1Font, black)
    Font.Draw ("February 15, 1966", 5, maxy - 90, body1Font, black)
end legend

procedure invalidInput
    legend
    Font.Draw ("You entered characters other than just integers and spaces. Please try again.", 5, maxy - 120, body2Font, black)
    delay (2000)
    legend
    Font.Draw ("Please enter a date in the format given in the legend above: ", 5, maxy - 120, body2Font, black)
end invalidInput

%input
setscreen ("graphics:720;405")
legend
Font.Draw ("Please enter a date in the form given in the legend above: ", 5, maxy - 120, body2Font, black)
loop
    locate (9, 2)
    get month_string
    if strintok (month_string) then
	month_int := strint (month_string)
	locate (9, length (month_string) + 2)
	get day_string
	if strintok (day_string) then
	    day_int := strint (day_string)
	    locate (9, length (month_string) + length (day_string) + 2)
	    get year_string
	    if strintok (year_string) then
		year_int := strint (year_string)
		if length (month_string) < 1 or length (day_string) < 1 or length (month_string) > 2 or length (day_string) > 2 then
		    legend
		    Font.Draw ("The values you entered are either too short or exceed the maximum. Please try again.", 5, maxy - 120, body2Font, black)
		    delay (2000)
		    legend
		    Font.Draw ("Please enter a date in the form given in the legend above: ", 5, maxy - 120, body2Font, black)
		else
		    if month_int = 1 or month_int = 3 or month_int = 5 or month_int = 7 or month_int = 8 or month_int = 10 or month_int = 12 then
			if day_int > 31 then
			    legend
			    Font.Draw ("The day value doesn't make sense in relation to the month value. Please try again.", 5, maxy - 120, body2Font, black)
			    delay (2000)
			    legend
			    Font.Draw ("Please enter a date in the form given in the legend above: ", 5, maxy - 120, body2Font, black)
			else
			    exit
			end if
		    else
			if day_int > 30 then
			    legend
			    Font.Draw ("The day value doesn't make sense in relation to the month value. Please try again.", 5, maxy - 120, body2Font, black)
			    delay (2000)
			    legend
			    Font.Draw ("Please enter a date in the form given in the legend above: ", 5, maxy - 120, body2Font, black)
			else
			    if month_int = 2 then
				if year_int mod 400 = 0 then
				    if day_int > 29 then
					legend
					Font.Draw ("The day value doesn't make sense in relation to the month value. Please try again.", 5, maxy - 120, body2Font, black)
					delay (2000)
					legend
					Font.Draw ("Please enter a date in the form given in the legend above: ", 5, maxy - 120, body2Font, black)
				    else
					exit
				    end if
				else
				    if year_int mod 100 not= 0 and year_int mod 4 = 0 then
					if day_int > 29 then
					    legend
					    Font.Draw ("The day value doesn't make sense in relation to the month value. Please try again.", 5, maxy - 120, body2Font, black)
					    delay (2000)
					    legend
					    Font.Draw ("Please enter a date in the form given in the legend above: ", 5, maxy - 120, body2Font, black)
					else
					    exit
					end if
				    else
					if day_int > 28 then
					    legend
					    Font.Draw ("The day value doesn't make sense in relation to the month value. Please try again.", 5, maxy - 120, body2Font, black)
					    delay (2000)
					    legend
					    Font.Draw ("Please enter a date in the form given in the legend above: ", 5, maxy - 120, body2Font, black)
					else
					    exit
					end if
				    end if
				end if
			    else
				exit
			    end if
			end if
		    end if
		end if
	    else
		invalidInput
	    end if
	else
	    invalidInput
	end if
    else
	invalidInput
    end if
end loop

%process/output
cls
Font.Draw ("Output", 5, maxy - 25, headingFont, black)
case month_int of
    label 1 :
	locate (3, 2)
	put "January " ..
    label 2 :
	locate (3, 2)
	put "February " ..
    label 3 :
	locate (3, 2)
	put "March " ..
    label 4 :
	locate (3, 2)
	put "April " ..
    label 5 :
	locate (3, 2)
	put "May " ..
    label 6 :
	locate (3, 2)
	put "June " ..
    label 7 :
	locate (3, 2)
	put "July " ..
    label 8 :
	locate (3, 2)
	put "August " ..
    label 9 :
	locate (3, 2)
	put "September " ..
    label 10 :
	locate (3, 2)
	put "October " ..
    label 11 :
	locate (3, 2)
	put "November " ..
    label 12 :
	locate (3, 2)
	put "December " ..
end case
put day_int, ", " ..
put year_int + 1900


