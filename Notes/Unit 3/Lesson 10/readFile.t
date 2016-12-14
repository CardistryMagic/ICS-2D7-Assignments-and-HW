var stream : int
var myText : string := ""
open : stream, "myText.txt", get %notice the file has to be in the "get" mode
get : stream, myText
