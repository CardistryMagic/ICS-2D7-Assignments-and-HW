/*
 Student Name: Devdigvijay Singh
 Teacher Name: Ms. Xie
 Date: Nov 4, 2016
 Program: diet_soda.t
 Version: 1
 Description:
 Input: The amount the consumer needs to receive, the interest rate, and the
 duration of the loan
 Process: Calculate:
	     - The face value
 Output: Displays a chart showing the amount the consumer needs to receive,
 the interest rate, the duration of the loan and the face value
 */

%declaration
var faceValue : real
var interestRate : real
var durationInMonths : real
var amountNeeded : real

%input
put "Please enter the amount of money needed in dollars."
get amountNeeded
put "Please enter the interest rate in percent (if it's 15%, then enter 15)."
get interestRate
put "Please enter the duration of the loan in months."
get durationInMonths

%process
faceValue := 12 * amountNeeded/(-durationInMonths*(interestRate/100)+12)

%output
cls
colorback (yellow)
locate (1, 1)
color (1)
put "Amount of money needed:"
locate (1, 30)
color (red)
put "$", amountNeeded
locate (2, 1)
color (1)
put "Interest Rate:"
locate (2, 30)
color (red)
put interestRate, " %"
locate (3, 1)
color (1)
put "Duration of the loan:"
locate (3, 30)
color (red)
put durationInMonths, " months"
locate (5, 1)
color (1)
put "Face value:"
locate (5, 30)
color (red)
put "$",faceValue
