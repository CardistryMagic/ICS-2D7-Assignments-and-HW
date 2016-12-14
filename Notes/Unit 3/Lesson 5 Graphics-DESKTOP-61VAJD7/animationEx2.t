
%%%%%%% Have a rocket blast off from the %%%%%%%%%
%%%%%%%%%% bottom of the screen to top. %%%%%%%%%%


setscreen ("graphics, offscreenonly")

var x : int := maxx div 2
var y : int := 0
var headx : array 1 .. 3 of int
var heady : array 1 .. 3 of int

loop

    put "BLAST OFF!!!!"

    y += 2
    headx (1) := x
    headx (2) := x - 10
    headx (3) := x + 10
    heady (1) := y + 75
    heady (2) := y + 50
    heady (3) := y + 50

    %drawfillbox (x - 10, y, x + 10, y + 50, yellow)
    drawfillpolygon (headx, heady, 3, brightred)
    View.Update
    cls
    delay (7)
    exit when y > maxy

end loop



