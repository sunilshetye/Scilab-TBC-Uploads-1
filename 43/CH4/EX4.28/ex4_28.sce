//Ex 4.28
clc;
f1=[2,1,2,1]
f2=[1,2,3,4]
F1=fft(f1,-1);
F2=fft(f2,-1);
F=F1.*F2;
f=fft(F,1)