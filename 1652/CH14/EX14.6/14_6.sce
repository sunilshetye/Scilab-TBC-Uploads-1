clc
//Initialization of variables
disp("from table 14.1,")
r1=1.75*10^-5 //m
r2=1.772*10^-4 //m
mp=1.008*10^-14 //m^2
//calculations
r3=r2/r1
mH2=r3*mp
mH=sqrt(mH2)
//results
printf("Concentraton of Hplus ions = %.1e M",mH)
