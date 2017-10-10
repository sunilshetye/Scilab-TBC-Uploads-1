clc;
clear all;
disp("steady state temperature distribution")
disp("Let th = t-ta")
disp("the controllign differential equation for the given problem is given by")
disp("d2th/dx2+d2th/dy2 =0------(1)")
disp("the boundary conditions are :")
disp("i) at x = infinity, th =0")
disp("ii) at x = 0, th =th0")
disp("iii) at y =L, th =0")
disp("iv) at y = 0, th =0")
disp("The solution of eq. 1 is  th = X(x)Y(y) ------ (2)")
disp("substituting the solution in controlling equation, we get ")
disp("1/X*d2X/dx2 =-1/Y*d2Y/dy2 =  + or - lambda^2")
disp("The required equations are :")
disp("d2X^2/dx2-lambda^2*X =0 ------(iii)")
disp("d2Y^2/dy2+lambda^2*Y =0 ------(iv)")
disp("the solutions of eqns are :")
disp("X = A*exp(lambda*x)+B*exp(-lambda*x)")
disp("Y = C*cos(lambda*y)+D*sin(lambda*y)")
disp("th = (A*exp(lambda*x)+B*exp(-lambda*x))*(C*cos(lambda*y)+D*sin(lambda*y))")
disp(" from boundary condition i), we have ")
disp("0 = (A*exp(lambda*x)+B*exp(-lambda*x))*(C*cos(lambda*y)+D*sin(lambda*y)")
disp("A = 0 and  th =B*(C*cos(lambda*y)+D*sin(lambda*y)")
disp("from boundary condition iv), we have")
disp("0 = C*B*exp(-lambda*x)")
disp("hence C = 0 and equation reduces to  th = B*D*sin(lambda*y)*exp(-lambda*x)")
disp("from boundary condition iii) we get, 0 = E*exp(-lambda*x)*sin(lambda*L), where E = B*D")
disp("since E is not 0, sin (lambda*L)=0")
disp("lambda = 0, %pi/L,2*%pi/L.....")
disp("lambdan = n*%pi/L, where n = 0,1,2....")
disp("hence , th = E*exp(-lambdan*x)*sin(lambdan*y)")
disp("from boundary eqn ii) we have ")
disp("th = sum(En*sin(lambdan*y), 1, infinity)")
disp("This is an expression of th0 in terms of Fourier series, where En are Fourier coefficients.")
disp("by integrating we get")
disp("th = 2*th0/L*(sum(((1-(-1)^n)/lambdan *exp(-lambdan*x)*sin(lambdan*y))")

,

