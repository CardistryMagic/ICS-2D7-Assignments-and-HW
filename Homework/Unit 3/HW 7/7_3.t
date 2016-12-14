/*
 Student Name: Devdigvijay Singh
 Teacher Name: Ms. Xie
 Date: Nov 4, 2016
 Program: 7_3.t
 Version: 1
 Description:
 Input: The letter grade of a student
 Process: According the grade, choose an output fitting for the student
 Output: Displays a note (text) that gives tips that will best help the student
 */

%declaration
var gradeInput : string

%input from user
put "Please enter your currect ICS course grade (A, B, C, D, or F)."
get gradeInput

%process/output
case gradeInput of
label 'A' :
put "You are doing excellent in ICS. Keep it up!"
label 'B' :
put "You are doing well in ICS. Just review a bit more before tests."
label 'C' :
put "Ask your teacher for help and take notes."
label 'D' :
put "You need to start getting your stuff together and be motivated to study for tests."
label 'F' :
put "You need to really turn around and realize that this is real and it matters. \nStart taking notes and focusing in class and completing homework on time."
end case
