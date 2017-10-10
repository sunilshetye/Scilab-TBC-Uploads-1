//Example 6.5:
//Find The Fourier Transform
clc;
a = 0.5;
max_limit = 10;
n = -max_limit+1:max_limit-1;
x = a^abs(n);
Wmax = 2*%pi;
K = 4;
k = 0:(K/1000):K;
W = k*Wmax/K;
XW = x* exp(-sqrt(-1)*n'*W);
XW_Mag = real(XW);
W = [-mtlb_fliplr(W), W(2:1001)];
XW_Mag = [mtlb_fliplr(XW_Mag), XW_Mag(2:1001)];
//plot for abs(a)<1
figure
subplot(2,1,1);
a = gca();
a.y_location ="origin";
a.x_location ="origin";
plot2d3('gnn',n,x);xtitle('Discrete Time Sequence x[n] for a>0')
subplot(2,1,2);
a = gca();
a.y_location ="origin";
a.x_location ="origin";
plot2d(W,XW_Mag);
title('Discrete Time Fourier Transform X(exp(jW))')
