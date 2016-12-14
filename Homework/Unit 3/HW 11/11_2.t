% The "Bounce" program
% Simulates the action of bouncing puck

var row, column : int
put "Enter starting row from 2-25 " ..
get row
put "Enter starting column from 2-80 " ..
get column
var rowChange, columnChange := 1
var randColor : int := 17

cls
loop
    if row = 1 or row = 25 then
	rowChange := -rowChange
	randColor := Rand.Int (1, 16)
    end if
    if column = 1 or column = 80 then
	columnChange := -columnChange
	randColor := Rand.Int (1, 16)
    end if
    locate (row, column)
    color (randColor)
    put "*" ..
    % Use delay to slow execution down
    delay (50)
    row := row + rowChange
    column := column + columnChange
end loop
