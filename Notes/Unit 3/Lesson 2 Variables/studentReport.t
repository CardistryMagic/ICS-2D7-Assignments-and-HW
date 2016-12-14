% Name: Shirley Xie
% Date: Oct 26, 2016
% Program: midtermReport.t
% Version:1.0.1
% Description: The program will prompt the user for name, for grade,
% whether takking ICS2O7 or not, courses taking and corresponsing marks;
% it will generate a report.


% declaration
var name : string
var grade : int
var gender : char
var subject_1 : string
var subject_2 : string
var subject_3 : string
var subject_4 : string
var mark_1 : int
var mark_2 : int
var mark_3 : int
var mark_4 : int
var takingICSorNot : boolean
var average : real

const NUMBER_OF_SUBJECTS : int := 4

% input from the user
put "Name: "
get name:*
cls
put name
put "Grade: "
get grade
cls
put "Gender: (M/F)"
get gender
cls
put "Names of Four subjects: "
get subject_1, subject_2, subject_3, subject_4
cls
put "marks for four subjects: "
get mark_1, mark_2, mark_3, mark_4
cls
put "Taking ICS or not?"
get takingICSorNot

% process
average := (mark_1 + mark_2 + mark_3 + mark_4) / NUMBER_OF_SUBJECTS

% % output
put "Name: ", name
put "Grade: ", grade
put "Gender: ", gender
put "Subjects: " : 12, "mark:" : 5
put subject_1 : 12, mark_1 : 5
put subject_2 : 12, mark_2 : 5
put subject_3 : 12, mark_3 : 5
put subject_4 : 12, mark_4 : 5
if takingICSorNot then
    put "Taking ICS now"
else
    put "Not currently taking ICS"
end if
put "Midterm Average: ", average : 0 : 1

