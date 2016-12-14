/*
 Student Name: Devdigvijay Singh
 Teacher Name: Ms. Xie
 Date: Nov 21, 2016
 Program: 9_4a.t
 Version: 1
 Description:
 Input: There is no input
 Process: There is no process
 Output: A range of numbers from 1 to 10 with a graphical representation of
 each number in between
 */

%declarations

%initialization

%input

%process

%output
for count : 1 .. 10 by 1
    put intstr (count) : 2, " ", repeat ('*', count)
end for

