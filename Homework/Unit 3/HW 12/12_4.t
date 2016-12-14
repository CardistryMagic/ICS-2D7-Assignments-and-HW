% The tv program.
View.Set ("graphics")


% shape of tv
drawfillbox (maxx div 2 - maxx div 4, maxy div 2 + maxy div 4, maxx div 2 + maxx div 4, maxy div 2 -maxy div 4, black)
drawfillbox (maxx div 2 - 140, maxy div 2 + 80, maxx div 2 +65, maxy div 2 - 80, white)

% controls
drawfilloval (maxx div 2 + 90, maxy div 2 + 70, 10, 10, grey)
drawfilloval (maxx div 2 + 90, maxy div 2 + 40, 10, 10, grey)
drawfilloval (maxx div 2 + 90, maxy div 2 + 10, 10, 10, grey)
drawfilloval (maxx div 2 + 90, maxy div 2 -20, 10, 10, grey)
drawfilloval (maxx div 2 + 90, maxy div 2 - 50, 10, 10, grey)

% screen
