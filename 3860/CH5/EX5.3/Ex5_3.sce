//Example 5.3: Implementation of Boolean logic using Decoders
clc // Clears the console
disp("f(a,b,c) = Summation(0,2,3,7)")
disp("g(a,b,c) = Summation(1,4,6,7)")
disp("Truth Table")
disp("a  b  c  |    f       g")
disp("0  0  0  |    1       0")
disp("0  0  1  |    0       1")
disp("0  1  0  |    1       0")
disp("0  1  1  |    1       0")
disp("1  0  0  |    0       1")
disp("1  0  1  |    0       0")
disp("1  1  0  |    0       1")
disp("1  1  1  |    1       1")
disp("The function f = a''b''c'' + a''bc'' + a''bc + abc.")
disp("The function g = a''b''c + ab''c'' + abc'' + abc.")
