//Example 2.1: Develop truth table for a system with three inputs a,b and c and four outputs w,x,y and z
clc // Clears the console
disp("Develop truth table for a system with three inputs a,b and c and four outputs w,x,y and z")
disp("Given conditions")
disp("a = 0: odd                   a = 1: even")
disp("b = 0: prime                 b = 1: not prime")
disp("c = 0: less than 8           c = 1: greater than or equal to 8")
disp("some input may never occur; the ouput is never all 0")
disp("Inputs   |     Outputs")
disp("A  B  C  |  W   X   Y   Z")
disp("0  0  0  |  0   1   1   1")
disp("0  0  1  |  1   1   0   1")
disp("0  1  0  |  X   X   X   X")
disp("0  1  1  |  1   1   1   1")
disp("1  0  0  |  0   0   1   0")
disp("1  0  1  |  X   X   X   X")
disp("1  1  0  |  0   1   1   0")
disp("1  1  1  |  1   1   1   0")
disp("The above table satisfies the given conditions.")