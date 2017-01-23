/*
 Student Name: Devdigvijay Singh
 Teacher Name: Ms. Xie
 Program: drawRectangle.t
 Version: 1.0
 Description: 
 Input - First and Second coordinates of rectangle
 Process - Getting the coordinates through Mouse.ButtonWait
 Output - The dot at the first coordinate and the rectangle at the end
 */

%Declaration
var coordinates : array 1 .. 4 of int
var buttons : array 1 .. 4 of int

%Input -- Prompt
locate (1, 1)
put "Click at one point and then at another point to draw a rectangle."

loop
    %Input / Process -- Mouse
    Mouse.ButtonWait ("down", coordinates (1), coordinates (2), buttons (1), buttons (2))

    %Output -- Clear Screen
    cls

    %Input -- Prompt
    locate (1, 1)
    put "Click at one point and then at another point to draw a rectangle."

    %Output -- Draw Dot
    Draw.Dot (coordinates (1), coordinates (2), black)

    %Input / Process -- Mouse
    Mouse.ButtonWait ("down", coordinates (3), coordinates (4), buttons (3), buttons (4))

    %Output -- Rectangle
    Draw.FillBox (coordinates (1), coordinates (2), coordinates (3), coordinates (4), black)
end loop
