var stream : int
open : stream, "myText.txt", put

var myPhrase : string := "This is how you put a variable to file"
put : stream, 42
put : stream, 2.112
put : stream, false
put : stream, myPhrase
