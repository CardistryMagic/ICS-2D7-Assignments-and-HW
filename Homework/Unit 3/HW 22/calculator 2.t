%declarations
import GUI

var numberButtons : array 0 .. 11 of int
var calculationButtons : array 1 .. 4 of int
var outputButtons : array 1 .. 4 of int
var textField : int
var position : int := 0
var stringEquation : string := "0"
var font1 : int
font1 := Font.New ("Arial :10")

forward procedure makeGUI

proc clearAndUpdateTextBox
    cls
    makeGUI
    GUI.AddLine (textField, stringEquation)
end clearAndUpdateTextBox

proc CE
    stringEquation := "0"
    clearAndUpdateTextBox
end CE

proc C
    stringEquation := "0"
    clearAndUpdateTextBox
end C

proc backspace
    if length (stringEquation) = 1 then
	stringEquation := "0"
    elsif stringEquation (*) = " " then
	if length (stringEquation) = 3 then
	    stringEquation := "0"
	else
	    stringEquation := stringEquation (1 .. * -3)
	end if
    else
	stringEquation := stringEquation (1 .. * -1)
    end if
    clearAndUpdateTextBox
end backspace

proc division
    stringEquation += " / "
    clearAndUpdateTextBox
end division

proc seven
    if stringEquation = "0" then
	stringEquation := "7"
    else
	stringEquation += "7"
    end if
    clearAndUpdateTextBox
end seven

proc eight
    if stringEquation = "0" then
	stringEquation := "8"
    else
	stringEquation += "8"
    end if
    clearAndUpdateTextBox
end eight

proc nine
    if stringEquation = "0" then
	stringEquation := "9"
    else
	stringEquation += "9"
    end if
    clearAndUpdateTextBox
end nine

proc multiply
    stringEquation += " * "
    clearAndUpdateTextBox
end multiply

proc four
    if stringEquation = "0" then
	stringEquation := "4"
    else
	stringEquation += "4"
    end if
    clearAndUpdateTextBox
end four

proc five
    if stringEquation = "0" then
	stringEquation := "5"
    else
	stringEquation += "5"
    end if
    clearAndUpdateTextBox
end five

proc six
    if stringEquation = "0" then
	stringEquation := "6"
    else
	stringEquation += "6"
    end if
    clearAndUpdateTextBox
end six

proc subtract
    stringEquation += " - "
    clearAndUpdateTextBox
end subtract

proc one
    if stringEquation = "0" then
	stringEquation := "1"
    else
	stringEquation += "1"
    end if
    clearAndUpdateTextBox
end one

proc two
    if stringEquation = "0" then
	stringEquation := "2"
    else
	stringEquation += "2"
    end if
    clearAndUpdateTextBox
end two

proc three
    if stringEquation = "0" then
	stringEquation := "3"
    else
	stringEquation += "3"
    end if
    clearAndUpdateTextBox
end three

proc add
    stringEquation += " + "
    clearAndUpdateTextBox
end add

proc pi
    stringEquation += "pi"
end pi

proc zero
    if stringEquation = "0" then
	stringEquation := "0"
    else
	stringEquation += "0"
    end if
    clearAndUpdateTextBox
end zero

proc decimal
    stringEquation += "."
    clearAndUpdateTextBox
end decimal

proc equal
    stringEquation += " = "
    clearAndUpdateTextBox
end equal

body proc makeGUI
    Draw.FillBox (0, 0, 350, 420, black)
    textField := GUI.CreateTextBoxFull (25, 245, 300, 150, 1, font1)
    outputButtons (1) := GUI.CreateButton ((25 + ((80 * (1 - 1)))), 185, 65, "CE", CE)
    outputButtons (2) := GUI.CreateButton ((25 + ((80 * (2 - 1)))), 185, 65, "C", C)
    outputButtons (3) := GUI.CreateButton ((25 + ((80 * (3 - 1)))), 185, 65, "<--", backspace)
    calculationButtons (1) := GUI.CreateButton ((25 + ((80 * (4 - 1)))), 185, 65, "÷", division)
    numberButtons (7) := GUI.CreateButton ((25 + ((80 * (1 - 1)))), 150, 65, "7", seven)
    numberButtons (8) := GUI.CreateButton ((25 + ((80 * (2 - 1)))), 150, 65, "8", eight)
    numberButtons (9) := GUI.CreateButton ((25 + ((80 * (3 - 1)))), 150, 65, "9", nine)
    calculationButtons (2) := GUI.CreateButton ((25 + ((80 * (4 - 1)))), 150, 65, "x", multiply)
    numberButtons (4) := GUI.CreateButton ((25 + ((80 * (1 - 1)))), 115, 65, "4", four)
    numberButtons (5) := GUI.CreateButton ((25 + ((80 * (2 - 1)))), 115, 65, "5", five)
    numberButtons (6) := GUI.CreateButton ((25 + ((80 * (3 - 1)))), 115, 65, "6", six)
    calculationButtons (3) := GUI.CreateButton ((25 + ((80 * (4 - 1)))), 115, 65, "-", subtract)
    numberButtons (1) := GUI.CreateButton ((25 + ((80 * (1 - 1)))), 80, 65, "1", one)
    numberButtons (2) := GUI.CreateButton ((25 + ((80 * (2 - 1)))), 80, 65, "2", two)
    numberButtons (3) := GUI.CreateButton ((25 + ((80 * (3 - 1)))), 80, 65, "3", three)
    calculationButtons (4) := GUI.CreateButton ((25 + ((80 * (4 - 1)))), 80, 65, "+", add)
    numberButtons (11) := GUI.CreateButton ((25 + ((80 * (1 - 1)))), 45, 65, "pi", pi)
    numberButtons (0) := GUI.CreateButton ((25 + ((80 * (2 - 1)))), 45, 65, "0", zero)
    numberButtons (10) := GUI.CreateButton ((25 + ((80 * (3 - 1)))), 45, 65, ".", decimal)
    outputButtons (4) := GUI.CreateButton ((25 + ((80 * (4 - 1)))), 45, 65, "=", equal)
end makeGUI

%initializations
setscreen ("graphics:350;420")

%process
clearAndUpdateTextBox

loop
    exit when GUI.ProcessEvent
end loop
