/*
    Student Name: Devdigvijay Singh
    Teacher Name: Ms. Xie
    Date: December 21, 2016
    Program: leap.t
    Version: 1.0
    Description:
    Input: One individual year to check and two years to form a range to check
    Process: Checks if current year is a leap year or not
    Output: Outputs if the individual year and the range of years have leap years and what the leap years are
*/

%declaration
var input1Year, startingYear, endingYear, addFactor : int

forward function leapOrNot (currentYear : int) : boolean
forward procedure findLeapYears (startingYear, endingYear : int)

%process
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

body procedure findLeapYears
    addFactor := startingYear
    var allYears : array 1 .. endingYear - startingYear of int
    put "All leap years between Year ", startingYear, " and ", endingYear, " is/are:"
    for testCurrentYear : 1 .. endingYear - startingYear by 1
	if leapOrNot (testCurrentYear + addFactor) then
	    allYears (testCurrentYear) := 1
	else
	    allYears (testCurrentYear) := 0
	end if
    end for
    for  checkCurrentYearInArray : 1 .. endingYear - startingYear by 1
	if allYears (checkCurrentYearInArray) = 1 then
	    put checkCurrentYearInArray + addFactor, ", "..
	end if
    end for
end findLeapYears

%input
put "Enter a testing year: " ..
get input1Year

%output
if leapOrNot (input1Year) then
    put "Year ", input1Year, " is a leap year."
else
    put "Year ", input1Year, " is not a leap year."
end if

put " "

%input
put "Enter starting year: "..
get startingYear
put "Enter ending year: "..
get endingYear

%output
findLeapYears (startingYear, endingYear)
