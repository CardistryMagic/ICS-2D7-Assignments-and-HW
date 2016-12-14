% Date: March 18, 2006
% Name: Ms. Xie
% Description: Demonstration of pixel animation using loops

setscreen ("graphics")
View.Set ("offscreenonly")
randomize

loop
    for col : 50 .. 580 by 20
	drawfilloval (col, 348, 50, 50, Rand.Int (1, 16))
	View.Update
	cls
	delay (100)

    end for

    for decreasing row : 348 .. 50 by 20
	drawfilloval (580, row, 50, 50, Rand.Int (1, 16))
	View.Update
	cls
	delay (100)

    end for

    for decreasing col : 580 .. 50 by 20
	drawfilloval (col, 50, 50, 50, Rand.Int (1, 16))
	View.Update
	cls
	delay (100)

    end for

    for row : 50 .. 348 by 20
	drawfilloval (50, row, 50, 50, Rand.Int (1, 16))
	View.Update
	cls
	delay (100)
    end for

end loop
