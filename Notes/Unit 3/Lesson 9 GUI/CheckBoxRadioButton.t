import GUI in "%oot/lib/GUI"
% Global Variable Section
var cb1, cb2 : int % The check box objects
var rb1, rb2, rb3 : int % The radio button objects
var clr := grey % Colour of the text outputted on the screen
% Action Procedure Section
proc BackgroundChoice
    % Action procedure for the three radio buttons
    % The background colour is changed according to the users choice
    if rb1 = GUI.GetEventWidgetID then
	GUI.SetBackgroundColour (grey)
	clr := grey
    elsif rb2 = GUI.GetEventWidgetID then
	GUI.SetBackgroundColour (green)
	clr := green
    elsif rb3 = GUI.GetEventWidgetID then
	GUI.SetBackgroundColour (yellow)
	clr := yellow
    end if
end BackgroundChoice
function FIND_HEIGHT (font : int) : int
    /* The height in pixels of the font used to output the message is returned using the Font.Size
     predefined procedure */
    var height : int % Stores the height of the font
    var junk1, junk2, junk3 : int % Store values returned by Font.Sizes that are not required
    Font.Sizes (font, height, junk1, junk2, junk3)
    result height
end FIND_HEIGHT
proc DrawFont (font : int, cb : int, yPos : int)
    /* Called by the DrawFontBig and DrawFontMedium procedures
     The message is outputted on the monitor in the correct position if check box is checked and erases the
     text if the check box is unchecked.
     font - the font identification variable for the chosen font
     cb - the checkbox chosen
     yPos - the bottom left position of the message being outputted */
    if GUI.GetCheckBox (cb) then
	Font.Draw ("Draw Big Font", 150, yPos, font, red)
    else
	drawfillbox (150, yPos - 10, 150 + Font.Width ("Draw Big Medium", font),
	    yPos + FIND_HEIGHT (font), clr)
    end if
end DrawFont
proc DrawFontBig (filled : boolean)
    % Action procedure for the first checkbox (cb1)
    % The DrawFont procedure is called to draw the message in the appropriate spot
    var font := Font.New ("sans serif:24:bold") % A 24pt sans serif font is selected
    DrawFont (font, cb1, 200)
end DrawFontBig
proc DrawFontMedium (filled : boolean)
    % Action procedure for the second check box (cb2)
    % The DrawFont procedure is called to draw the message in the appropriate spot
    var font := Font.New ("palatino:15:bold") % A 15pt palitino font is selected
    DrawFont (font, cb2, 150)
end DrawFontMedium
% GUI Creation Section
cb1 := GUI.CreateCheckBox (100, 100, "Draw Big Font", DrawFontBig)
cb2 := GUI.CreateCheckBox (100, 75, "Draw Big Medium", DrawFontMedium)
rb1 := GUI.CreateRadioButton (250, 100, "Grey Background", 0, BackgroundChoice)
rb2 := GUI.CreateRadioButton (-1, -1, "Green Background", rb1, BackgroundChoice)
rb3 := GUI.CreateRadioButton (-1, -1, "Yellow Background", rb2, BackgroundChoice)
GUI.SetBackgroundColour (grey)
loop
    exit when GUI.ProcessEvent
end loop
