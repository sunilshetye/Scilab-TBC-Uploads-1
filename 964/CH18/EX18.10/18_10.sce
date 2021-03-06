//clc()
x = [3,4.5,7,9];
fx = [2.5,1,2.5,0.5];
//we get the following equations for cubic splines
//8*f"(4.5) + 2.5*f"(7) = 9.6
//2.5*f"(4.5) + 9*f"(7) = -9.6
//above two equations give 
m = 1.67909;//(m = f"(4.5))
n = -1.53308;//(n = f"(7))
//this values can be used to yield the final equation
//f1(x) = 0.186566 * (x - 3)^3 + 1.66667*(4.5 - x) + 0.246894*(x - 3)
//in similar manner other equations can be found too
//f2(x) = 0.111939(7 - x)^3 - 0.102205*(x - 4.5)^3 - 0.299621 * (7 - x) + 1.638783 * (x - 4.5)
//f3(x) = -0.127757*(9 - x)^3 + 1.761027 *(9 - x) + 0.25*(x - 7)
x1 = 3:0.1:4.5;
x2 = 4.5:0.1:7;
x3 = 7:0.1:9;
plot2d(x1,0.186566 * (x1 - 3)^3 + 1.66667*(4.5 - x1) + 0.246894*(x1 - 3));
plot2d(x2,0.111939*(7 - x2)^3 - 0.102205*(x2 - 4.5)^3 - 0.299621 * (7 - x2) + 1.638783 * (x2 - 4.5));
plot2d(x3,-0.127757*(9 - x3)^3 + 1.761027 *(9 - x3) + 0.25*(x3 - 7));
xtitle("f(x) vs x","x","f(x)")
x = 5;
fx = 0.111939*(7 - x)^3 - 0.102205*(x - 4.5)^3 - 0.299621 * (7 - x) + 1.638783 * (x - 4.5);
disp(fx,"The value at x = 5 is")
