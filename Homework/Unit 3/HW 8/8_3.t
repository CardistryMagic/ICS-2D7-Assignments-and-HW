%declaration
var length_input : string
var length_input_int : int
var width_input : string
var width_input_int : int

%initialization
length_input := "0"
width_input := "0"

%input/process
loop
    put "Please enter an integer length for the box: " ..
    get length_input
    if strintok (length_input) then
	length_input_int := strint (length_input)
	if length_input_int + 10 <= maxx and length_input_int > 0 then
	    cls
	    exit
	else
	    put "Your box will be either out the screen or not visible at all. Please try again.", skip
	end if
    else
	put "You entered a value other than an integer.\nPlease try again.", skip
    end if
end loop
loop
    put "Please enter an integer width for the box: " ..
    get width_input
    if strintok (width_input) then
	width_input_int := strint (width_input)
	if width_input_int + 10 <= maxy and width_input_int > 0 then
	    cls
	    exit
	else
	    put "Your box will be either out the screen or not visible at all. Please try again.", skip
	end if
    else
	put "You entered a value other than an integer.\nPlease try again.", skip
    end if
end loop

%output
drawfillbox (10, 10, length_input_int + 10, width_input_int + 10, brightred)
