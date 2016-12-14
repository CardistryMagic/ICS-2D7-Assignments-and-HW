%variables
var HEIGHT_IN_INCH:real
var HEIGHT_IN_CM:real
const INCH_TO_CM := 2.54

%input
put "Please enter your height in inches."
get HEIGHT_IN_INCH
cls

%process
HEIGHT_IN_CM := HEIGHT_IN_INCH*INCH_TO_CM

%output
put "Given that your height is ", HEIGHT_IN_INCH, " inches,\nand that 1 inch is 2.54 cm,\nwe know that your height is ", HEIGHT_IN_CM, " cm."
