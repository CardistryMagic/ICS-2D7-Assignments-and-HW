% TO USE DIFFERENT FONTS:
%
% First, create new font, and store id number
%
%   Font.New(fontname : string) --> returns an integer font id #
%
% Next, use the font to display on the screen
%
%   Font.Draw(output : string, x, y, fontid, colour : int)
%
% When you are done using a font, "free" it.
%
%   Font.Free(fontid : int)

var font1, font2, font3, font4 : int

% Create a series of fonts, and store their fontID numbers
font1 := Font.New ("serif:12")
font2 := Font.New ("sans serif:18:bold")
font3 := Font.New ("mono:9")
font4 := Font.New ("Arial:24:Bold,Italic")

% Draw on screen using specific fonts
Font.Draw ("This is in a serif font", 50, 30, font1, red)
Font.Draw ("This is in a sans serif font", 50, 80, font2, brightblue)
Font.Draw ("This is in a mono font", 50, 130, font3, colorfg)
Font.Draw ("This is in Arial", 50, 180, font4, green)

% We're done, so free them!
Font.Free (font1)
Font.Free (font2)
Font.Free (font3)
Font.Free (font4)
