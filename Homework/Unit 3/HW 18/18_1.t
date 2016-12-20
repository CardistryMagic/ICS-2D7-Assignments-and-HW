import GUI in "%oot/lib/GUI" % Loads the Graphical User Interface (GUI) Library

% Global Variables Section
var horSlider, verSlider : int % Variables for the slider widgets
var buttonOne, buttonTwo, buttonThree, buttonFour : int % Variables for button objects

% Action Procedures Section
proc ShowHorSliderValue (value : int)
    % Action procedure for the horizontal slider
    % This procedure responds to the user action of "sliding" the horizontal slider
    % value - the value of the slider that is passed to the action procedure
    locate (1, 1)
    colorback (blue)
    color (white)
    put "The value of the horizontal slider ", value, " "
end ShowHorSliderValue

proc ShowVerSliderValue (value : int)
    % Action procedure for the vertical slider
    % This procedure responds to the user action of "sliding" the vertical slider
    % value - the value of the slider that is passed to the action procedure
    locate (2, 1)
    colorback (blue)
    color (white)
    put "The value of the vertical slider ", value, " "
end ShowVerSliderValue

proc AddSliderValue
    % Action procedure for the Add button
    % Responds to the user action of clicking the Add button by outputting the sum of the two
    % slider values.
    var sum : int % sum of the two slider values
    sum := GUI.GetSliderValue (verSlider) + GUI.GetSliderValue (horSlider)
    colorback (blue)
    color (white)
    locate (3, 1)
    put "" : 50
    locate (3, 1)
    put "The sum of the two slider values is ", sum
end AddSliderValue

proc MultiplySliderValue
    /* Action procedure for the Multiply button
     Responds to the user action of clicking the Multiply button by outputting the product of % the two
     slider values. */
    var product : int % product of the two slider values
    product := GUI.GetSliderValue (verSlider) * GUI.GetSliderValue (horSlider)
    colorback (blue)
    color (white)
    locate (3, 1)
    put "" : 50
    locate (3, 1)
    put "The product of the two slider values is ", product
end MultiplySliderValue

proc findDifferenceOfSliderValue
    var difference : int
    difference := abs (GUI.GetSliderValue (verSlider) - GUI.GetSliderValue (horSlider))
    locate (4,1)
    put "The difference between the two slider values is ", difference
end proc

% GUI Object Creation Section
GUI.SetBackgroundColor (blue) % Changes the background color of the windows
verSlider := GUI.CreateVerticalSlider (10, 50, 200, 0, 100, 50, ShowVerSliderValue)
horSlider := GUI.CreateHorizontalSlider (50, 50, 200, 0, 100, 50, ShowHorSliderValue)
buttonOne := GUI.CreateButton (200, 200, 0, "Multiply", MultiplySliderValue)
buttonTwo := GUI.CreateButton (200, 150, 0, "Add", AddSliderValue)
/* This loop checks for an event (ie. mouse click or key being pressed) and then performs an
 appropriate action and usually calls the required event procedure.*/
loop
    exit when GUI.ProcessEvent
end loop
