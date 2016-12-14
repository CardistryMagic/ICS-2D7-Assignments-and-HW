var strNum : string
var num : int
loop
    put "Enter an integer"
    get strNum : *
    exit when strintok (strNum) % means when the string can be converted to an integer
    put "You've entered characters that are not allowed in an integer"
    put "Please try again"
end loop

num := strint (strNum)      
put "You entered ", num
