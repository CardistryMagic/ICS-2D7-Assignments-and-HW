/*
 Student Name: Devdigvijay Singh
 Teacher Name: Ms. Xie
 Date: Nov 4, 2016
 Program: commute.t
 Version: 1
 Description:
 Input: The number of kilowatt-hours consumed
 Process: Calculate:
	     - The next month's electricity bill with the discount and utility tax
 Output: Displays a chart showing the number of kilowatt-hours consumed, the discount, 
 the utility tax and the next month's electricity bill
 */

%declaration
var kilowattHours : real
var totalCost : real

%initialization
const DISCOUNT : real := 0.9
const UTILITY_TAX : real := 0.03
const COST_PER_KILOWATTHOUR : real := 0.16

%input
put "Please input the number of kilowatt-hours consumed."
get kilowattHours

%process
totalCost := (kilowattHours * COST_PER_KILOWATTHOUR * DISCOUNT) + (kilowattHours * COST_PER_KILOWATTHOUR * UTILITY_TAX)

%output
cls
colorback (yellow)
locate (1, 1)
color (1)
put "Kilowatt-hours:"
locate (1, 51)
color (red)
put kilowattHours, " kilowattHours"
locate (2, 1)
color (1)
put "Discount:"
locate (2, 51)
color (red)
put (1-DISCOUNT)*100, " %"
locate (3, 1)
color (1)
put "Utility Tax:"
locate (3, 51)
color (red)
put UTILITY_TAX*100, " %"
locate (4, 1)
color (1)
put "Cost per kilowatt-hour:"
locate (4, 51)
color (red)
put "$",COST_PER_KILOWATTHOUR:0:2
locate (6, 1)
color (1)
put "Total Bill:"
locate (6, 51)
color (red)
put "$",totalCost:0:2
