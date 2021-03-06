//Example 8.6
clc;clear;close;
s=poly(0,'s');
z=poly(0,'z');
T=1;
Hs=1/(s+0.5)/(s^2+0.5*s+2);
Hz=horner(Hs,(1-1/z)/T);
disp('Using Impulse Invariant Technique:')
disp(Hs,'H(s)=');
disp(Hz,'H(z)=');