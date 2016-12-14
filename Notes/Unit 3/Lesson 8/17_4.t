function digits (number : int) : int
    var i : int := 0
    loop
	if 10 ** i > abs (number) then
	    exit
	end if
	i += 1
    end loop
    result i
end digits



loop
    var input : int
    put "Please enter a number:  " ..
    get input
    put "\nThere are ", digits (input), " digits in ", input, "!!!"
end loop
