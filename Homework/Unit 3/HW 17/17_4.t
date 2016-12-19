%declaration
var yValue, count : int
var currentValue, quitOrNot : string
var numbers : flexible array 1 .. 0 of int

function digits (number : int) : int
  result length(intstr(abs(number)))
end digits

%input
loop
  count := 0
  loop
    count += 1
    put "Please an integer or quit to end the sequence: "
    get currentValue : *
    if currentValue = "quit" then
      exit
    else
      %initialization
      new numbers, count
      numbers (count) := strint (currentValue)
    end if
  end loop
  yValue := 1
  cls
  locate (1, 5)
  put "NUMBER" : 15, "DIGITS" : 15
  for currentOutput : 1 .. upper (numbers) by 1
  locate (currentOutput + 1, 5)
  put intstr(numbers (currentOutput)) : 15, intstr(digits (numbers (currentOutput))) : 15
  end for
  put "Would you like to continue? If so, type yes. Type anything else to quit: "..
  get quitOrNot : *
  if quitOrNot not= "yes" then
    exit
  end if
  cls
end loop
