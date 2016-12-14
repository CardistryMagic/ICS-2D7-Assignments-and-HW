%variables
var COST:real
var TOTAL_PRICE:real
const DISCOUNT := 10
const TAX := 13

%input
put "Please enter the price of the product:"
get COST
cls

%process
TOTAL_PRICE:= (COST*((100-DISCOUNT)/100))*(1+(TAX/100))

%output
put "The total price is $",TOTAL_PRICE:0:2,"."
