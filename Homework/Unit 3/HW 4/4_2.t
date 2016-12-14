%declaration
var answerInput:int

const ANSWER_CORRECT:int := 14

%input from user
put "Calculate the following math question... 5 + 3 * 3"
get answerInput

%process/output
if answerInput = ANSWER_CORRECT then
    put "Nice job! You got it correct!"
else
    put "You need more practice. Try again."
end if
