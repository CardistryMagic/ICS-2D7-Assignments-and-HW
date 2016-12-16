%declaration
var lengthInput, widthInput : real

procedure putArea (var lengthInt, widthInt : real)
  var area : real
  %process
  area := lengthInt * widthInt
  put "The area is: ", area : 0 : 2, "\n"
end putArea

%initialization
lengthInput := 0
widthInput := 0

%input
loop
  put "Please enter the length: "..
  get lengthInput
  put "Please enter the width: "..
  get widthInput
  
  %output
  putArea (lengthInput, widthInput)
end loop
