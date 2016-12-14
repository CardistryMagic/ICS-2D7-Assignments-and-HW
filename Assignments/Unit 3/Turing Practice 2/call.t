/*
 Student Name: Devdigvijay Singh
 Teacher Name: Ms. Xie
 Date: Dec 5th, 2016
 Program: call.t
 Version: 1
 Description:
 Input: The time of calls started, the day of the call and the duration of the call
 Process: Calculates the cost of the call
 Output: Displays the cost of the call
 */

%declarations
var inputAMorPM, inputDay, inputDuration, inputHoursTime, inputMinutesTime : string := "0"
var body1Font, body2Font, day1Int, headingFont, inputDurationInt, inputHoursInt, inputMinutesInt, inputToMinutes, remainingTime, weekday8To6Time, weekdayBeforeOrAfter8To6Time, weekendTime : int := 0
var totalPrice : real := 0
const weekday8To6Rate := 0.5
const weekdayBeforeOrAfter8To6Rate := 0.4
const weekendRate := 0.25

%initialization (some initialization done in declarations)
headingFont := Font.New ("Cambria:20:underline,italic")
body1Font := Font.New ("Cambria:14")
body2Font := Font.New ("Constantia:12")

procedure legend
    cls
    Font.Draw ("Legend", 5, maxy - 25, headingFont, black)
    Font.Draw ('"1 22 PM"', 5, maxy - 50, body1Font, black)
    Font.Draw ("would mean", 5, maxy - 70, body1Font, black)
    Font.Draw ("1:22 PM or 13:22", 5, maxy - 90, body1Font, black)
end legend

procedure invalidInput
    legend
    Font.Draw ("You entered characters other than just integers and spaces. Please try again.", 5, maxy - 120, body2Font, black)
    delay (1000)
    legend
    Font.Draw ("Please enter the time that you began the call in the format give above: ", 5, maxy - 120, body2Font, black)
end invalidInput

%input
loop
    %get start day
    setscreen ("graphics:720;405")
    legend
    Font.Draw ("Please enter the first two letters of the day when you began the call: ", 5, maxy - 120, body2Font, black)
    loop
	locate (9, 2)
	get inputDay
	if Str.Lower (inputDay) = "mo" or Str.Lower (inputDay) = "tu" or Str.Lower (inputDay) = "we" or Str.Lower (inputDay) = "th" or Str.Lower (inputDay) = "fr" or Str.Lower (inputDay) = "sa" or
		Str.Lower (inputDay) = "su" then
	    case Str.Lower (inputDay) of
		label "mo" :
		    day1Int := 1
		label "tu" :
		    day1Int := 2
		label "we" :
		    day1Int := 3
		label "th" :
		    day1Int := 4
		label "fr" :
		    day1Int := 5
		label "sa" :
		    day1Int := 6
		label "su" :
		    day1Int := 7
	    end case
	    exit
	else
	    legend
	    Font.Draw ("The characters you entered are invalid. Please try again.", 5, maxy - 120, body2Font, black)
	    delay (1000)
	    legend
	    Font.Draw ("Please enter the day when you began the call: ", 5, maxy - 120, body2Font, black)
	end if
    end loop

    %get start time
    setscreen ("graphics:720;405")
    legend
    Font.Draw ("Please enter the time that you began the call in the format give above: ", 5, maxy - 120, body2Font, black)
    loop
	locate (9, 2)
	get inputHoursTime
	if strintok (inputHoursTime) then
	    inputHoursInt := strint (inputHoursTime)
	    locate (9, length (inputHoursTime) + 3)
	    get inputMinutesTime
	    if strintok (inputMinutesTime) then
		inputMinutesInt := strint (inputMinutesTime)
		locate (9, length (inputHoursTime) + length (inputMinutesTime) + 4)
		get inputAMorPM
		if Str.Lower (inputAMorPM) = "am" or Str.Lower (inputAMorPM) = "pm" then
		    if length (inputHoursTime) > 2 or length (inputMinutesTime) > 2 or length (inputAMorPM) > 2 then
			legend
			Font.Draw ("The values you entered exceed the maximum lengths. Please try again.", 5, maxy - 120, body2Font, black)
			delay (1000)
			legend
			Font.Draw ("Please enter the time that you began the call in the format give above: ", 5, maxy - 120, body2Font, black)
		    else
			if inputHoursInt > 12 or inputMinutesInt > 59 then
			    legend
			    Font.Draw ("The values you entered are invalid. Please try again.", 5, maxy - 120, body2Font, black)
			    delay (1000)
			    legend
			    Font.Draw ("Please enter the time that you began the call in the format give above: ", 5, maxy - 120, body2Font, black)
			else
			    if inputHoursInt = 12 and Str.Lower (inputAMorPM) = "am" then
				if day1Int = 7 then
				    day1Int := 1
				    exit
				else
				    day1Int += 1
				    exit
				end if
			    else
				exit
			    end if
			end if
		    end if
		else
		    legend
		    Font.Draw ("You entered characters that do not fit the format given above. Please try again.", 5, maxy - 120, body2Font, black)
		    delay (1000)
		    legend
		    Font.Draw ("Please enter the time that you began the call in the format give above: ", 5, maxy - 120, body2Font, black)
		end if
	    else
		invalidInput
	    end if
	else
	    invalidInput
	end if
    end loop

    %get duration time
    setscreen ("graphics:720;405")
    legend
    Font.Draw ("Please enter the duration of the call in minutes: ", 5, maxy - 120, body2Font, black)
    loop
	locate (9, 2)
	get inputDuration
	if strintok (inputDuration) then
	    inputDurationInt := strint (inputDuration)
	    if inputDurationInt <= 1440 and inputDurationInt > 0 then
		exit
	    else
		Font.Draw ("The values you entered are below the minimum amounts. Please try again.", 5, maxy - 120, body2Font, black)
		delay (1000)
		legend
		Font.Draw ("Please enter the duration of the call in minutes: ", 5, maxy - 120, body2Font, black)
	    end if
	else
	    invalidInput
	end if
    end loop
    exit
end loop
cls

%process/output
%convert inputted time into total minutes
if Str.Lower (inputAMorPM) = "am" then
    if inputHoursInt = 12 then
	inputToMinutes := inputMinutesInt
    else
	inputToMinutes := inputHoursInt * 60 + inputMinutesInt
    end if
else
    inputToMinutes := (inputHoursInt + 12) * 60 + inputMinutesInt
end if

if not (day1Int = 5) and not (day1Int = 6) and not (day1Int = 7) then
    %any weekday except friday
    weekendTime := 0
    if inputToMinutes >= 480 and inputToMinutes <= 1080 then
	if (1080 - inputToMinutes) > inputDurationInt then
	    weekdayBeforeOrAfter8To6Time := 0
	    weekday8To6Time := inputDurationInt
	elsif (1080 - inputToMinutes) < inputDurationInt then
	    weekday8To6Time := 1080 - inputToMinutes
	    remainingTime := inputDurationInt - weekday8To6Time
	    if remainingTime > 840 then
		weekdayBeforeOrAfter8To6Time := 600
		remainingTime := remainingTime - weekdayBeforeOrAfter8To6Time
		weekday8To6Time := weekday8To6Time + remainingTime
	    else
		weekdayBeforeOrAfter8To6Time := remainingTime
	    end if
	end if
    else
	if inputToMinutes < 480 then
	    if (480 - inputToMinutes) > inputDurationInt then
		weekday8To6Time := 0
		weekdayBeforeOrAfter8To6Time := inputDurationInt
	    elsif (480 - inputToMinutes) < inputDurationInt then
		weekdayBeforeOrAfter8To6Time := 480 - inputToMinutes
		remainingTime := inputDurationInt - weekdayBeforeOrAfter8To6Time
		if remainingTime > 600 then
		    weekday8To6Time := 600
		    remainingTime := remainingTime - weekday8To6Time
		    weekdayBeforeOrAfter8To6Time := weekdayBeforeOrAfter8To6Time + remainingTime
		else
		    weekday8To6Time := remainingTime
		end if
	    end if
	elsif inputToMinutes > 1080 then
	    if inputDurationInt < 840 then
		weekday8To6Time := 0
		weekdayBeforeOrAfter8To6Time := inputDurationInt
	    elsif inputDurationInt > 840 then
		weekdayBeforeOrAfter8To6Time := 840
		remainingTime := inputDurationInt - weekdayBeforeOrAfter8To6Time
		if remainingTime > 600 then
		    weekday8To6Time := 600
		    remainingTime := remainingTime - weekday8To6Time
		    weekdayBeforeOrAfter8To6Time := weekdayBeforeOrAfter8To6Time + remainingTime
		else
		    weekday8To6Time := remainingTime
		end if
	    end if
	end if
    end if
elsif day1Int = 5 then
    %friday
    if inputToMinutes >= 480 and inputToMinutes <= 1080 then
	if (1080 - inputToMinutes) > inputDurationInt then
	    weekday8To6Time := inputDurationInt
	    weekdayBeforeOrAfter8To6Time := 0
	    weekendTime := 0
	elsif (1080 - inputToMinutes) < inputDurationInt then
	    weekday8To6Time := 1080 - inputToMinutes
	    remainingTime := inputDurationInt - weekday8To6Time
	    if remainingTime > 360 then
		weekdayBeforeOrAfter8To6Time := 360
		remainingTime := remainingTime - weekdayBeforeOrAfter8To6Time
		weekendTime := remainingTime
	    else
		weekdayBeforeOrAfter8To6Time := remainingTime
		weekendTime := 0
	    end if
	end if
    else
	if inputToMinutes < 480 then
	    if (480 - inputToMinutes) > inputDurationInt then
		weekday8To6Time := 0
		weekdayBeforeOrAfter8To6Time := inputDurationInt
		weekendTime := 0
	    elsif (480 - inputToMinutes) < inputDurationInt then
		weekdayBeforeOrAfter8To6Time := 480 - inputToMinutes
		remainingTime := inputDurationInt - weekdayBeforeOrAfter8To6Time
		if remainingTime > 600 then
		    weekday8To6Time := 600
		    remainingTime := remainingTime - weekday8To6Time
		    weekendTime := remainingTime
		else
		    weekday8To6Time := remainingTime
		end if
	    end if
	elsif inputToMinutes > 1080 then
	    if (1440 - inputToMinutes) > inputDurationInt then
		weekday8To6Time := 0
		weekdayBeforeOrAfter8To6Time := inputDurationInt
		weekendTime := 0
	    elsif (1440 - inputToMinutes) < inputDurationInt then
		weekday8To6Time := 0
		weekdayBeforeOrAfter8To6Time := 1440 - inputToMinutes
		remainingTime := inputDurationInt - weekdayBeforeOrAfter8To6Time
		weekendTime := remainingTime
	    end if
	end if
    end if
elsif day1Int = 6 then
    %saturday
    weekday8To6Time := 0
    weekdayBeforeOrAfter8To6Time := 0
    weekendTime := inputDurationInt
elsif day1Int = 7 then
    %sunday
    if (1440 - inputToMinutes) > inputDurationInt then
	weekday8To6Time := 0
	weekdayBeforeOrAfter8To6Time := 0
	weekendTime := inputDurationInt
    elsif (1440 - inputToMinutes) <= inputDurationInt then
	weekendTime := 1440 - inputDurationInt
	remainingTime := inputDurationInt - weekendTime
	if remainingTime > 480 then
	    weekdayBeforeOrAfter8To6Time := 480
	    remainingTime := remainingTime - 480
	    weekday8To6Time := remainingTime
	else
	    weekdayBeforeOrAfter8To6Time := remainingTime
	    weekday8To6Time := 0
	end if
    end if
end if

%total price calculation
totalPrice := (weekday8To6Time * weekday8To6Rate) + (weekdayBeforeOrAfter8To6Time * weekdayBeforeOrAfter8To6Rate) + (weekendTime * weekendRate)

%Output
cls
put "Your total is $", totalPrice : 0 : 2, "."
