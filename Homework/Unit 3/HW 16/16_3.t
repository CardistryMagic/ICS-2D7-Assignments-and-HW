%declaration/initialization
var aInput, bInput, cInput : real := 1
var numberOfRealRoots : real
forward procedure calculateDiscriminants (var a, b, c : real)
forward procedure calculateOneRoot (var a, b, c : real)
forward procedure calculateTwoRoots (var a, b, c : real)
forward procedure noRealRoots
forward procedure displayWholeEquation (var coefficientA, coefficientB, coefficientC : real)

%declaration/process
body procedure calculateDiscriminants
    if (b ** 2) - (4 * a * c) > 0 then
	calculateTwoRoots (a, b, c)
    elsif (b ** 2) - (4 * a * c) = 0 then
	calculateOneRoot (a, b, c)
    else
	noRealRoots
    end if
end calculateDiscriminants

body procedure calculateOneRoot
    var root : real
    displayWholeEquation (a, b, c)
    root := (-b + sqrt ((b ** 2) - (4 * a * c))) / (2 * a)
    put "There is only one real root to this equation: ", root
    put " "
end calculateOneRoot

body procedure calculateTwoRoots
    var root1, root2 : real
    displayWholeEquation (a, b, c)
    root1 := (-b + sqrt ((b ** 2) - (4 * a * c))) / (2 * a)
    root2 := (-b - sqrt ((b ** 2) - (4 * a * c))) / (2 * a)
    put "There are two real roots to this equation: ", root1, " and ", root2
    put " "
end calculateTwoRoots

body procedure noRealRoots
    put "There are no real roots to the quadratic equation that you entered."
    put ""
end noRealRoots

body procedure displayWholeEquation
    put "The equation you entered is: "
    put "\tf(x) = ", aInput, "(x*x) + ", bInput, "x + ", cInput
    put ""
end displayWholeEquation

loop
    %input
    put "Enter 0 as all the parameters to terminate the program."
    put "Please enter the coefficient a: " ..
    get aInput
    put "Please enter the coefficient b: " ..
    get bInput
    put "Please enter the coefficient c: " ..
    get cInput
    exit when aInput = 0 and bInput = 0 and cInput = 0
    %output
    calculateDiscriminants (aInput, bInput, cInput)
end loop
