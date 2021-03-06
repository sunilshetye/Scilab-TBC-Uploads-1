clc;
clear;
disp("To find whether h is s-a-0 or not");
disp("First we have to express f as function of h and x1,x2,x3,x4");
disp("Simplifying the given logical circuit we obtain the expression of output as");
disp("f(X,h) = x1x2x3x4 + h(x2x3 + x1^x2^x3^x4^))");
disp("Here h = x2^x3^");
disp("let G = x1x2x3x4 & H = h(x2x3 + x1^x2^x3^x4^)");
disp("Taking derivative on both sides");
disp("df/dh=G^dH/dh");
disp("Appllying the formula d[f(X)+g(X)]/dx=f^(X)dg(X)/dx exor g^(X)df(X)/dx exor df(X)/dx.dg(X)/dx");
disp("df/dh=G^dH/dh=(x1^+x2^+x3^+x4^)(x2x3+x1^x2^x3^x4^)");
disp("df/dh=x1^x2x3+x2x3x4^+x1^x2^x3^x4^");
disp("To find tests for h s-a-0 we compute the values for which h(df/dh)=1");
disp("hdf/dh=x2^x3^(x1^x2x3+x2x3x4^+x1^x2^x3^x4^)");
disp("hdf/dh=x1^x2^x3^x4^");
disp("Thus the test set for h s-a-0 is X(0,0,0,0)");