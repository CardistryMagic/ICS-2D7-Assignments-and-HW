var stream : int
const MENU_NUMBER := 3

var description : array 1 .. MENU_NUMBER of string
var calories : array 1 .. MENU_NUMBER of int
var fat : array 1 .. MENU_NUMBER of string
var cholesterol : array  1 .. MENU_NUMBER of string
var sodium : array 1 .. MENU_NUMBER of string
var carbohydrate : array 1 .. MENU_NUMBER of string
var protein : array 1 .. MENU_NUMBER of string
var price : array  1 .. MENU_NUMBER of string



open : stream, "myMenu.txt", put
for i : 1 .. MENU_NUMBER
    put " Description: "
    get description (i):*
    put : stream, description (i)

    put " calorie: "
    get calories (i)
    put : stream, calories (i)

    put " fat: "
    get fat (i):*
    put : stream, fat (i)

    put " cholesterol: "
    get cholesterol (i):*
    put : stream, cholesterol (i)

    put " sodium: "
    get sodium (i):*
    put : stream, sodium (i)

    put " carbohydrate "
    get carbohydrate (i):*
    put : stream, carbohydrate (i)

    put " protein "
    get protein (i):*
    put : stream, protein (i)

    put " price "
    get price (i):*
    put : stream, price (i)

end for
