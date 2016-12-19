%declaration
var currentValue, count : int
var currentValueString, quitOrNot : string
var values : flexible array 1 .. 0 of int
function meanValue(a : array 1 .. * of int) : real
  var sum : int := 0
  for currentAdd : 1 .. upper (a) by 1
    sum += a (currentAdd)
  end for
  result sum / upper(a)
end meanValue

loop
  count := 0
  loop
    count += 1
    put "Please enter value #", count, " or quit to end the sequence: "..
    get currentValueString
    if currentValueString = "quit" then
      exit
    else
      new values, count
      values (count) := strint(currentValueString)
    end if
  end loop
  put meanValue (values) : 0 : 2
  put " "
  put "Enter yes to continue or anything else to quit: "..
  get quitOrNot
  if quitOrNot not= "yes" then
    exit
  end if
end loop
