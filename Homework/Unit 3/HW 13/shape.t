%declarations
import GUI
var size_choice : int := 0
var shape_choice : int := 0
var color_choice : int := 0
var quitorredo : string (1)
var quit1 : int := 0

%initialization
setscreen ("graphics:720;405")

procedure testfor
    if size_choice > 0 and shape_choice > 0 and color_choice > 0 then
	GUI.Quit
    end if
end testfor

forward procedure fill1
forward procedure fill2
forward procedure fill3

procedure size_procedure1
    size_choice := 1
    fill1
    testfor
end size_procedure1

procedure size_procedure2
    size_choice := 2
    fill1
    testfor
end size_procedure2

procedure size_procedure3
    size_choice := 3
    fill1
    testfor
end size_procedure3

procedure shape_procedure1
    shape_choice := 1
    fill2
    testfor
end shape_procedure1

procedure shape_procedure2
    shape_choice := 2
    fill2
    testfor
end shape_procedure2

procedure shape_procedure3
    shape_choice := 3
    fill2
    testfor
end shape_procedure3

procedure color_procedure1
    color_choice := 12
    fill3
    testfor
end color_procedure1

procedure color_procedure2
    color_choice := 10
    fill3
    testfor
end color_procedure2

procedure color_procedure3
    color_choice := 9
    fill3
    testfor
end color_procedure3

var size_button1 : int := GUI.CreateButtonFull (round (0.01 * maxx), round ((maxy / 3) * 2 + 0.02 * maxy), round (maxx / 3 - 0.04 * maxx), "Small", size_procedure1, round (maxy / 3 - 0.04 * maxy),
    '1', false)
var size_button2 : int := GUI.CreateButtonFull (round (0.02 * maxx + maxx / 3), round ((maxy / 3) * 2 + 0.02 * maxy), round (maxx / 3 - 0.04 * maxx), "Medium", size_procedure2, round (maxy / 3 -
    0.04 * maxy), '1', false)
var size_button3 : int := GUI.CreateButtonFull (round (0.03 * maxx + (maxx / 3) * 2), round ((maxy / 3) * 2 + 0.02 * maxy), round (maxx / 3 - 0.04 * maxx), "Large", size_procedure3, round (maxy /
    3 -
    0.04 * maxy), '1', false)
var shape_button1 : int := GUI.CreateButtonFull (round (0.01 * maxx), round ((maxy / 3) + 0.02 * maxy), round (maxx / 3 - 0.04 * maxx), "Circle", shape_procedure1, round (maxy / 3 - 0.04 * maxy),
    '1', false)
var shape_button2 : int := GUI.CreateButtonFull (round (0.02 * maxx + maxx / 3), round ((maxy / 3) + 0.02 * maxy), round (maxx / 3 - 0.04 * maxx), "Square", shape_procedure2, round (maxy / 3 -
    0.04 *
    maxy), '1', false)
var shape_button3 : int := GUI.CreateButtonFull (round (0.03 * maxx + (maxx / 3) * 2), round ((maxy / 3) + 0.02 * maxy), round (maxx / 3 - 0.04 * maxx), "Star", shape_procedure3, round (maxy / 3 -
    0.04 * maxy), '1', false)
var color_button1 : int := GUI.CreateButtonFull (round (0.01 * maxx), round (0.02 * maxy), round (maxx / 3 - 0.04 * maxx), "Red", color_procedure1, round (maxy / 3 -
    0.04 * maxy), '1', false)
var color_button2 : int := GUI.CreateButtonFull (round (0.02 * maxx + maxx / 3), round (0.02 * maxy), round (maxx / 3 - 0.04 * maxx), "Green", color_procedure2, round (maxy / 3 -
    0.04 * maxy), '1', false)
var color_button3 : int := GUI.CreateButtonFull (round (0.03 * maxx + (maxx / 3) * 2), round (0.02 * maxy), round (maxx / 3 - 0.04 * maxx), "Blue", color_procedure3, round (maxy / 3 -
    0.04 * maxy), '1', false)

GUI.Hide (size_button1)
GUI.Hide (size_button2)
GUI.Hide (size_button3)
GUI.Hide (shape_button1)
GUI.Hide (shape_button2)
GUI.Hide (shape_button3)
GUI.Hide (color_button1)
GUI.Hide (color_button2)
GUI.Hide (color_button3)

procedure buttons
    GUI.Show (size_button1)
    GUI.Show (size_button2)
    GUI.Show (size_button3)
    GUI.Show (shape_button1)
    GUI.Show (shape_button2)
    GUI.Show (shape_button3)
    GUI.Show (color_button1)
    GUI.Show (color_button2)
    GUI.Show (color_button3)

end buttons

body procedure fill1
    GUI.Hide (size_button1)
    GUI.Hide (size_button2)
    GUI.Hide (size_button3)
end fill1

body procedure fill2
    GUI.Hide (shape_button1)
    GUI.Hide (shape_button2)
    GUI.Hide (shape_button3)
end fill2

body procedure fill3
    GUI.Hide (color_button1)
    GUI.Hide (color_button2)
    GUI.Hide (color_button3)
end fill3

%input
loop
    buttons
    %process
    loop
	exit when GUI.ProcessEvent
    end loop
    cls

    %output
    if shape_choice = 1 then
	Draw.FillOval (round (maxx / 2), round (maxy / 2), round (size_choice * (maxy / 6)), round (size_choice * (maxy / 6)), color_choice)
    elsif shape_choice = 2 then
	Draw.FillBox (round ((maxx / 2) - ((maxy / 8) * size_choice)), round ((maxy / 2) - ((maxy / 8) * size_choice)), round ((maxx / 2) + ((maxy / 8) * size_choice)), round ((maxy / 2) + ((maxy /
	    8) *
	    size_choice)), color_choice)
    else
	Draw.FillStar (round ((maxx / 2) - ((maxy / 6) * size_choice)), round ((maxy / 2) - ((maxy / 6) * size_choice)), round ((maxx / 2) + ((maxy / 6) * size_choice)), round ((maxy / 2) + ((maxy /
	    6) *
	    size_choice)), color_choice)
    end if
    loop
	put "Enter q to quit and r to redo: " ..
	getch (quitorredo)
	if quitorredo = "q" or quitorredo = "Q" then
	    quit1 := 1
	    exit
	elsif quitorredo = "r" or quitorredo = "R" then
	    exit
	else
	    put "You entered values other than integers. Please try again"
	end if
    end loop
    if quit1 = 1 then
	exit
    end if
    cls
    size_choice := 0
    shape_choice := 0
    color_choice := 0
    GUI.ResetQuit
end loop
