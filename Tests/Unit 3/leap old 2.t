/*
 Student Name: Devdigvijay Singh
 Teacher Name: Ms. Xie
 Date: December 21, 2016
 Program: leap.t
 Version: 1.0
 Description:
 Input: One individual year to check and two years to form a range to check
 Process: Checks if current year is a leap year or not
 Output: Outputs if the individual year and the range of years have leap years
 and what the leap years are
 */

%declaration
%----variable addFactor is the input difference between the start year and 1----
var input1Year, addFactor : int

var inputAndEndingYears : array 1 .. 2 of int

forward function leapOrNot (currentYear : int) : boolean
forward procedure findLeapYears (years : array 1 .. 2 of int)

%process
%----Function that tests for leap----
body function leapOrNot
    if currentYear mod 4 = 0 then
	if currentYear mod 100 = 0 then
	    if currentYear mod 400 = 0 then
		result true
	    else
		result false
	    end if
	else
	    result true
	end if
    else
	result false
    end if
end leapOrNot

%----Procedure for displaying all the leap years----
body procedure findLeapYears
    %----variable addFactor allows element 1 to correspond to the starting year and so on----
    addFactor := years (1)
    var allYears : array 1 .. years (2) - years (1) of int
    put "All leap years between Year ", years (1), " and ", years (2), " is/are:"
    for testCurrentYear : 1 .. years (2) - years (1) by 1
	if leapOrNot (testCurrentYear + addFactor) then
	    allYears (testCurrentYear) := 1
	else
	    allYears (testCurrentYear) := 0
	end if
    end for
    for checkCurrentYearInArray : 1 .. years (2) - years (1) by 1
	if allYears (checkCurrentYearInArray) = 1 then
	    put checkCurrentYearInArray + addFactor, ", " ..
	end if
    end for
end findLeapYears


%input
%----Gets first individual year----
put "Enter a testing year: " ..
get input1Year

%output
%----Outputs for individual year----
if leapOrNot (input1Year) then
    put "Year ", input1Year, " is a leap year."
else
    put "Year ", input1Year, " is not a leap year."
end if

put " "

%input
%----Gets input for range of years----
put "Enter starting year: " ..
get inputAndEndingYears (1)
put "Enter ending year: " ..
get inputAndEndingYears (2)

%output
%----Processes and displays the leap years in the inputted range----
findLeapYears (inputAndEndingYears)
