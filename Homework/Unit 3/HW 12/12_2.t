var centery : int := maxy div 2
setscreen ("graphics")
drawfillbox (10, 10, centery - 10, centery - 10, 52)
drawfillbox (centery + 10, centery + 10, maxy - 10, maxy - 10, 46)
drawfillbox (centery - 10, centery + 10, 10, maxy - 10, 41)
drawfillbox (centery + 10, 10, maxy - 10, centery - 10, 43)
