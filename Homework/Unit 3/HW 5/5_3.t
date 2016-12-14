% Student Name: Devdigvijay Singh
% Teacher Name: Ms. Xie
% Date: Nov 4, 2016
% Program: 5_3.t
% Version: 1
% Description: Organizes two words alphabetically.

%declaration
var firstWord : string
var secondWord : string

%input from the user
put "Enter the first word:" ..
get firstWord

put "Enter the second word:" ..
get secondWord

%process/output
if firstWord > secondWord then
    put secondWord
    put firstWord
else
    put firstWord
    put secondWord
end if
