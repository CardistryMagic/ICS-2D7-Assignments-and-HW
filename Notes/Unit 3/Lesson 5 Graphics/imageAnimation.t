% Date: March 18, 2006
% Name: Ms.  Xie
% Description: Demonstration of image animation using loops

var picID : int
var x, y : int

View.Set ("graphics,nobuttonbar, offscreenonly")

% Load an image file and get its picID number
picID := Pic.FileNew ("sunset.jpg")


for col : 0 .. 575 by 2
    % Draw the image (picID) at a certain column and row.
    Pic.Draw (picID, col, 300, picCopy)
    View.Update
    cls
    delay (10)
end for

for decreasing row : 300 .. 0 by 2
    Pic.Draw (picID, 575, row, picCopy)
    View.Update
    cls
    delay (10)
end for

for decreasing col : 575 .. 0 by 2
    Pic.Draw (picID, col, 0, picCopy)
    View.Update
    cls
    delay (10)
end for

for row : 0 .. 300 by 2
    Pic.Draw (picID, 0, row, picCopy)
    View.Update
    cls
    delay (10)
end for

% We don't need the image anymore, so free it!
Pic.Free (picID)
