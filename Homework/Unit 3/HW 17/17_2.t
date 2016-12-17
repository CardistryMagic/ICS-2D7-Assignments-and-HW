%declaration
var count : int
var temporaryVariable, final : string

var numbers : flexible array 1 .. 0 of real

function smallest (numbersForFunction : array 1 .. * of real) : real
    var smallestReal : real := maxint
    for currentCompare : 1 .. upper (numbersForFunction) by 1
	if numbersForFunction (currentCompare) < smallestReal then
	    smallestReal := numbersForFunction (currentCompare)
	end if
    end for
    result smallestReal
end smallest

%input
loop
    count := 0
    loop
	count += 1
	put "Please enter the number for element #", count, " or quit to stop this series: " ..
	get temporaryVariable : *
	exit when temporaryVariable = "quit"
	new numbers, count
	numbers (count) := strreal (temporaryVariable)
    end loop
    put "The smallest number is ", smallest (numbers), " ."
    put " "
    put "Enter yes to continue or anything else to quit: " ..
    get final : *
    if final not= "yes" then
	     exit
    end if
end loop
