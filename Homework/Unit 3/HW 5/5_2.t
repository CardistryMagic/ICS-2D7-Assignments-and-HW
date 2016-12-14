/*
    Name: Dave
    Date: November 4, 2016
    Program: 5_2.t
    version: 1
    Description: Calculate the tax depending on the province or territory.
*/

%declaration/initialization
var inputPrice : real
var salesTax : real
var salesTaxTotal : real
var total : real
var province:string

%input from the user
put "Enter the price for the item: " ..
get inputPrice

put "Enter the province that the item was bought in: " ..
get province

%process
if province = "Northwest" or province = "Nunavut" or province = "Yukon" or province = "Alberta" then
    salesTax := 7
    
else
    if province = "Newfoundland" or province = "Nova" or province = "New" then
	salesTax := 15
    else
	if province = "P.E.I." or province = "Prince" or province = "P." then
	    salesTax := 17
	else
	    if province = "Quebec" then
		salesTax := 14.5
	    else
		if province = "Ontario" or province = "Saskatchewan" then
		    salesTax := 13
		else
		    if province = "British" or province = "Manitoba" then
			salesTax := 14
		    end if
		end if
	    end if
	end if
    end if
end if

put province

salesTaxTotal := inputPrice * (salesTax / 100)
total := inputPrice + salesTaxTotal
%output
cls
put "PRICE OF PRODUCT"
locate (1, 20)
put "$", inputPrice : 0 : 2
put "TAX"
locate (2, 20)
put "$", salesTaxTotal : 0 : 2
put "TOTAL"
locate (3, 20)
put "$", total
