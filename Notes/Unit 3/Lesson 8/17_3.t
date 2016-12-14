function meanValue (a : array 1 .. * of int) : real
    var count := upper (a)
    var sum : int := 0
    for i : 1 .. count
	   sum += a (i)
    end for
    if a (count) < 0 then
	   sum -= a (count)
    end if
    result sum / (count - 1)
end meanValue

var list : flexible array 1 .. 0 of int
var count : int := 0

loop
    put "Enter numbers; negative number to exit.. "
    loop
	   count += 1
	   new list, count
	   get list (count)
	   exit when list (count) < 0
    end loop

    put "The mean is:  ", meanValue (list), "\n\n"
end loop
