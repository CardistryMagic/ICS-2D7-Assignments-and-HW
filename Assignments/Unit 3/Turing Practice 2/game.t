/*
 Student Name: Devdigvijay Singh
 Teacher Name: Ms. Xie
 Date: Dec 5th, 2016
 Program: game.t
 Version: 1
 Description:
 Input: Rock, paper or scissors from two players
 Process: Finds which player wins the game of rock, paper, scissors
 Output: Displays the winner and why the winner won
 */

%declarations
var player1_input, player1_input_lowercase, player2_input, player2_input_lowercase : string (1)
var body1Font, body2Font, body3Font, headingFont : int

%initialization
headingFont := Font.New ("Cambria:20:underline")
body1Font := Font.New ("Cambria:14")
body2Font := Font.New ("Constantia:12")
body3Font := Font.New ("Cambria:14:bold")

procedure legend
    cls
    Font.Draw ("Legend", 5, maxy - 25, headingFont, black)
    Font.Draw ("'R' = Rock", 5, maxy - 50, body1Font, black)
    Font.Draw ("'P' = Paper", 5, maxy - 70, body1Font, black)
    Font.Draw ("'S' = Scissor", 5, maxy - 90, body1Font, black)
end legend

%input
setscreen ("graphics:720;405")
legend
Font.Draw ("Player 2, please look away. Player 1, please enter a letter for rock, paper or scissors: ", 5, maxy - 120, body2Font, black)
loop
    View.Set ("nocursor")
    getch (player1_input)
    if length (player1_input) = 1 then
	player1_input_lowercase := Str.Lower (player1_input)
	if ord (player1_input_lowercase) = 114 or ord (player1_input_lowercase) = 115 or ord (player1_input_lowercase) = 112 then
	    exit
	else
	    legend
	    Font.Draw ("You entered invalid characters for this game. Please try again.", 5, maxy - 120, body2Font, black)
	    Font.Draw ("Player 2, please look away. Player 1, please enter a letter for rock, paper or scissors: ", 5, maxy - 140, body2Font, black)
	end if
    end if
end loop

legend
Font.Draw ("Good choice! Now, please switch to Player 2.", 5, maxy - 120, body2Font, black)
delay (2000)
legend
Font.Draw ("Player 1, please look away. Player 2, please enter a letter for rock, paper or scissors: ", 5, maxy - 120, body2Font, black)
loop
    View.Set ("nocursor")
    getch (player2_input)
    if length (player2_input) = 1 then
	player2_input_lowercase := Str.Lower (player2_input)
	if ord (player2_input_lowercase) = 114 or ord (player2_input_lowercase) = 115 or ord (player2_input_lowercase) = 112 then
	    exit
	else
	    legend
	    Font.Draw ("You entered invalid characters for this game. Please try again.", 5, maxy - 120, body2Font, black)
	    Font.Draw ("Player 2, please look away. Player 1, please enter a letter for rock, paper or scissors: ", 5, maxy - 140, body2Font, black)
	end if
    end if
end loop

%process/output
cls
if player1_input_lowercase = player2_input_lowercase then
    Font.Draw ("Nobody wins!", 5, maxy - 40, body3Font, black)
else
    if player1_input_lowercase = "r" then
	if player2_input_lowercase = "s" then
	    Font.Draw ("Rock breaks scissors!", 5, maxy - 20, body1Font, black)
	    Font.Draw ("Player 1 wins!", 5, maxy - 40, body3Font, black)
	else
	    if player2_input_lowercase = "p" then
		Font.Draw ("Paper covers rock!", 5, maxy - 20, body1Font, black)
		Font.Draw ("Player 2 wins!", 5, maxy - 40, body3Font, black)
	    end if
	end if
    else
	if player1_input_lowercase = "s" then
	    if player2_input_lowercase = "r" then
		Font.Draw ("Rock breaks scissors!", 5, maxy - 20, body1Font, black)
		Font.Draw ("Player 2 wins!", 5, maxy - 40, body3Font, black)
	    else
		if player2_input_lowercase = "p" then
		    Font.Draw ("Scissors cut paper!", 5, maxy - 20, body1Font, black)
		    Font.Draw ("Player 1 wins!", 5, maxy - 40, body3Font, black)
		end if
	    end if
	else
	    if player1_input_lowercase = "p" then
		if player2_input_lowercase = "r" then
		    Font.Draw ("Paper covers rock!", 5, maxy - 20, body1Font, black)
		    Font.Draw ("Player 1 wins!", 5, maxy - 40, body3Font, black)
		else
		    if player2_input_lowercase = "s" then
			Font.Draw ("Scissors cut paper!", 5, maxy - 20, body1Font, black)
			Font.Draw ("Player 2 wins!", 5, maxy - 40, body3Font, black)
		    end if
		end if
	    end if
	end if
    end if
end if

