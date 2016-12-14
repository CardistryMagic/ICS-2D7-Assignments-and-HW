%variables
var A:real
var B:real
var C:real
var D:real
var ANSWER:real

%input
put "Please enter the value for A."
get A
put "Please enter the value for B."
get B
put "Please enter the value for C."
get C
put "Please enter the value for D."
get D
cls

%process
ANSWER := ((A+B)*(C-B))/(A+B+C+D)

%output
put "Given...", "\nA = ",A,"\nB = ",B,"\nC = ",C,"\nD = ",D,"\nThe answer is ",ANSWER,"."
