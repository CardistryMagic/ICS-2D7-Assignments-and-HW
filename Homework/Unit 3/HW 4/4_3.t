%declaration
var userAge : int

const LEGAL_AGE : int := 18

%input from user
put "Please enter your age."
get userAge

%process/output
if userAge >= LEGAL_AGE then
    put "OLD ENOUGH TO VOTE"
else
    put "You still have to wait ", LEGAL_AGE - userAge, " years until you can vote."
end if
