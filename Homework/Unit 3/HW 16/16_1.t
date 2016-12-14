procedure printRectangle
  %declaration/initialization
    const SYMBOL : char := "*"
    const HEIGHT : int := 3
    const WIDTH : int := 8
    %process
    for printHeight : 1 .. HEIGHT by 1
      for printWidth : 1 .. WIDTH by 1
	put SYMBOL..
      end for
      put " "
    end for
end printRectangle

%output
printRectangle
put "That was a rectangle."
printRectangle
put "That was another rectangle."
printRectangle
put "Fine... That was the the final rectangle."
