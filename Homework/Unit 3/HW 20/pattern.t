var menuChoiceInput, pattern, substituteInput : string (1)

forward procedure menu
forward procedure count
forward procedure eliminate
forward procedure substitute

body procedure menu
    locate (1, 1)
    put "1. Count a pattern"
    put "2. Eliminate a pattern"
    put "3. Substitute a pattern"
    put "4. Exit"
end menu

body procedure count
    var wordInput : string := ""
    var pattern : string (1)
    cls
    put "Please enter a word: " ..
    get wordInput
    put "Please enter the one letter pattern: " ..
    getch (pattern)
    cls
    menu
    var count : int := 0
    for currentLetter : 1 .. length (wordInput) by 1
	if wordInput = pattern then
	    count += 1
	end if
    end for
    put "The single-letter pattern repeats ", count, " times in the inputted word."
end count

body procedure eliminate
    var wordInput : string := ""
    var pattern : string (1)
    cls
    put "Please enter a word: " ..
    get wordInput
    put "Please enter the one letter pattern: " ..
    getch (pattern)
    cls
    menu
    if wordInput (1) = pattern then
	wordInput := wordInput (2 .. *)
    end if
    for currentLetter : 2 .. length (wordInput) by 1
	if wordInput (currentLetter) = pattern then
	    wordInput := wordInput (1 .. (currentLetter - 1)) + wordInput ((currentLetter + 1) .. *)
	end if
    end for
    put "The inputted word without the inputted pattern is ", wordInput
end eliminate

body procedure substitute
    var wordInput : string := ""
    var pattern, subsituteInput : string (1)
    cls
    put "Please enter a word: " ..
    get wordInput
    put "Please enter the one letter pattern: " ..
    getch (pattern)
    put "Please enter the one letter replacement pattern: " ..
    getch (substituteInput)
    cls
    menu
    if wordInput (1) = pattern then
	wordInput := substituteInput + wordInput (2 .. *)
    end if
    for currentLetter : 2 .. length (wordInput) by 1
	if wordInput (currentLetter) = pattern then
	    wordInput := wordInput (1 .. (currentLetter - 1)) + substituteInput + wordInput ((currentLetter + 1) .. *)
	end if
    end for
    put "The inputted word with the replacement letter is ", wordInput
end substitute

loop
    menu
    put "Please choose an option: " ..
    getch (menuChoiceInput)
    exit when menuChoiceInput = "4"
    case menuChoiceInput of
	label "1" :
	    count
	label "2" :
	    eliminate
	label "3" :
	    substitute
    end case
end loop
