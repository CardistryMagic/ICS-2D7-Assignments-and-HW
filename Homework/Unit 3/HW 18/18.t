/*
 Name: Devdigvijay Singh
 Date: 2016-12-18
 Description: The program has three sliders, each with their own values. The program will calculate the product, sum, remainder, and quotient of the values
 */

import GUI in "%oot/lib/GUI" % Loads the Graphical User Interface (GUI) Library


% Global Variables Section
var horSlider, verSlider, thirdSlider : int % Variables for the slider widgets
var buttonOne, buttonTwo, buttonThree, buttonFour : int % Variables for button objects
var maxValue: int

% Action Procedures Section
proc ShowHorSliderValue (value : int)

    % Action procedure for the horizontal slider
    % This procedure responds to the user action of "sliding" the horizontal slider
    % value - the value of the slider that is passed to the action procedure

    locate (1, 1)
    Text.Color (0)
    put "The value of the horizontal slider ", value, " "
end ShowHorSliderValue

proc ShowVerSliderValue (value : int)

    % Action procedure for the vertical slider
    % This procedure responds to the user action of "sliding" the vertical slider
    % value - the value of the slider that is passed to the action procedure

    locate (2, 1)
    Text.Color (0)
    Text.ColorBack (1)

    put "The value of the vertical slider ", value, " "
end ShowVerSliderValue

proc ShowThirdHorSlider (value : int)
    locate (3, 1)
    Text.Color (0)
    Text.ColorBack (1)

    put "The value of the upper horizontal slider is ", value
end ShowThirdHorSlider

proc AddSliderValue
    % Action procedure for the Add button
    % Responds to the user action of clicking the Add button by outputting the sum of the two
    % slider values

    var sum : int % sum of the two slider values
    sum := GUI.GetSliderValue (verSlider) + GUI.GetSliderValue (horSlider) + GUI.GetSliderValue (thirdSlider)
    locate (3, 1)
    put "" : 50
    locate (4, 1)
    Text.Color (0)
    Text.ColorBack (1)

    put "The sum of the two slider values is ", sum
end AddSliderValue

proc MultiplySliderValue
    /* Action procedure for the Multiply button
     Responds to the user action of clicking the Multiply button by outputting the product of % the two
     slider values. */

    var product : int % product of the two slider values
    product := GUI.GetSliderValue (verSlider) * GUI.GetSliderValue (horSlider) * GUI.GetSliderValue (thirdSlider)
    locate (3, 1)
    put "" : 50
    locate (4, 1)
    Text.Color (0)
    Text.ColorBack (1)

    put "The product of the two slider values is ", product
end MultiplySliderValue

proc QuotientSliderValue
    /* Action procedure for the Quotient button
     Responds to the user action of clicking the Quotient button by outputting the product of % the two
     slider values. */

    var quotient : real % quotient of the two slider values
    quotient := GUI.GetSliderValue (verSlider) / GUI.GetSliderValue (horSlider) / GUI.GetSliderValue (thirdSlider)
    locate (3, 1)
    put "" : 50
    locate (4, 1)
    Text.Color (0)
    Text.ColorBack (1)


    put "The quotient of the two slider values is ", quotient : 0 : 2
end QuotientSliderValue

proc SubtractionSliderValue
    /* Action procedure for the subtraction button
     Responds to the user action of clicking the Multiply button by outputting the product of % the two
     slider values. */

    var remainder : int % product of the two slider values
    remainder := GUI.GetSliderValue (verSlider) - GUI.GetSliderValue (horSlider) - GUI.GetSliderValue (thirdSlider)
    locate (3, 1)
    put "" : 50
    locate (4, 1)
    Text.Color (0)
    Text.ColorBack (1)
    put "The remainder of the two slider values is ", remainder
end SubtractionSliderValue

% input
put "What shall be the maximum value of the slider?"
get maxValue


% GUI Object Creation Section
GUI.SetBackgroundColor (blue) % Changes the background color of the windows
verSlider := GUI.CreateVerticalSlider (10, 50, 200, 0, maxValue, 50, ShowVerSliderValue)
horSlider := GUI.CreateHorizontalSlider (50, 50, 200, 0, maxValue, 50, ShowHorSliderValue)
thirdSlider := GUI.CreateHorizontalSlider (50, 300, 200, 0, maxValue, 50, ShowThirdHorSlider)

var label1 : int := GUI.CreateLabel (50, 320, "First Horizontal Slider" )
var label2 : int := GUI.CreateLabel (50, 0, "Second Horizontal Slider")
var label3 : int := GUI.CreateLabel (30, 100, "Third Vertical Slider")

buttonOne := GUI.CreateButton (200, 200, 0, "Multiply", MultiplySliderValue)
buttonTwo := GUI.CreateButton (200, 150, 0, "Add", AddSliderValue)
buttonThree := GUI.CreateButton (200, 100, 0, "Quotient", QuotientSliderValue)
buttonFour := GUI.CreateButton (200, 250, 0, "Subtraction", SubtractionSliderValue)


loop
    exit when GUI.ProcessEvent
end loop
