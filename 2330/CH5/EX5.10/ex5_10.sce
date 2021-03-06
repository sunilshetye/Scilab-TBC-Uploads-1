// Example 5.10
format('v',6)
clc;
clear;
close;
// given data
V_BE= 0.7;//in V
V_CC= 15;// in V
R_C= 1*10^3;// in Ω
R_B= 200*10^3;// in Ω
bita= 300;// unit less
// The collector current,
I_C= (V_CC-V_BE)/(R_C+R_B/bita);// in A
I_C=I_C*10^3;// in mA
disp(I_C,"The value of I_C in mA is : ");
I_C=I_C*10^-3;// in A
// The collector to emitter voltage,
V_CE= V_CC-I_C*R_C;// in V
disp(V_CE,"The value of V_CE in volts is : ")
