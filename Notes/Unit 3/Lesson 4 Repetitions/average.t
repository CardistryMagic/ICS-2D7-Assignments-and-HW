% A program to prompt the user for a list of marks and the
% prompt will stop when a negative mark is entered. Then
% it will calculate the average of marks and print it out.

% declaration
var average : real
var count : int % to track the number of valid marks
var mark : real % to store the mark
var sum : real

% initialization
count := 0
sum := 0

% input
put "Enter a list of marks(positive) and a negative one to exit: "
loop
    get mark
    exit when mark < 0
	count += 1     % same as count := count + 1
    sum += mark
end loop

% process
average := sum / count

% output
put "You have entered ", count, " marks and " ..
put "the average is ", average : 0 : 2
