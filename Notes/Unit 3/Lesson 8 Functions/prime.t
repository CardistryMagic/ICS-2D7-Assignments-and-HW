
forward function findNoOfPrimes (a, b : int) : int
forward function isPrime (number : int) : boolean


body function findNoOfPrimes (a, b : int) : int
    var primes : int := 0
    for i : a .. b
	if isPrime (i) then
	    primes += 1
	end if
    end for
    result primes
end findNoOfPrimes


body function isPrime (number : int) : boolean
    var outcome : boolean := false
    var count : int := 0

    for i : 1 .. number
	if (number mod i = 0) then
	    count += 1
	end if
    end for
    if (count = 2) then
	result true
    else
	result false
    end if
end isPrime

% main program
var number1, number2 : int
put "Enter two integers: " ..
get number1, number2
put "There are ", findNoOfPrimes (number1, number2), " prime number(s) in between ", number1, " and ", number2
