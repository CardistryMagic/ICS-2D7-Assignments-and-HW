/*
 Student Name: Devdigvijay Singh
 Teacher Name: Ms. Xie
 Date: Nov 4, 2016
 Program: cereal.t
 Version: 1
 Description:
 Input: Weight of a package of breakfast cereal in ounces
 Process: Calculate:
 - Weight of a package of breakfast cereal in metric tons
 - How many packages are needed to yield one metric ton
 Output: Displays a chart showing weight of package of breakfast cereal
 in both metric tons and ounces, and how many packages are needed to yield
 metric ton
 */

%declaration
var weightOunces : real
var weightMetricTons : real
var boxesOfCereal : real

const OUNCES_TO_METRIC : real := 35273.92

%input
put "Please input the weight of a cereal box in ounces."
get weightOunces

%process
weightMetricTons := weightOunces / OUNCES_TO_METRIC
boxesOfCereal := 1 / weightMetricTons
if weightMetricTons not= 1 then
    boxesOfCereal := boxesOfCereal div 1 + 1
end if

%output
cls
colorback (yellow)
locate (1, 1)
color (1)
put "Weight of one package:"
locate (1, 40)
color (red)
put weightOunces, " Ounces or"
locate (2, 1)
put " "
locate (2, 40)
put weightMetricTons, " Metric Tons"
put " "
locate (4,1)
color (1)
put "# of Packages for One Metric Ton:"
locate (4, 40)
color (red)
put boxesOfCereal, " Boxes"
