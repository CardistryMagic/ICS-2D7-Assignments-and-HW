/*
 Student Name: Devdigvijay Singh
 Teacher Name: Ms. Xie
 Date: Nov 21, 2016
 Program: 9.2.t
 Version: 1
 Description:
 Input: There is no input
 Process: Squares and cubes every natural number from 5 to 40
 Output: Displays a chart with the number, square and cube of the number
 */

%declarations


%initialization


%input/process


%output
put "CHART OF SQUARES AND CUBES"
put "------------------------------------"
put "NUMBER" : 15, "SQUARED" : 15, "CUBED"
put "------------------------------------"
for value : 5 .. 40
    delay (50)
    put intstr (value) : 15, intstr (value * value) : 15, value * value * value
end for

