setscreen ("graphics:970;650")

var x1 : int := 10
var y1 : int := 610
var clr : int := 0
var num : int := 0
var serifFont, sansSerifFont, monoFont : int

serifFont := Font.New ("serif:11")

loop

var x2 : int := x1 + 20
var y2 : int := y1 + 20

drawfillbox (x1, y1, x2, y2, clr)
drawbox (x1, y1, x2, y2, 7)

Draw.Text (intstr (num), x2 + 5, y2 - 15, serifFont, 7)

num := num + 1
y1 := y1 - 40
clr := clr + 1

if y1 <= 0 then
x1 := x1 + 60
y1 := 610
end if

exit when y1 <= 0 and x1 >= 970 or clr > 255
end loop
