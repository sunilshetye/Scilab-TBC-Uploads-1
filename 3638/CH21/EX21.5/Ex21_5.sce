//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 21.5
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
va=5.96e3;//Velocity of the acoustic wave
Lb=1.7e-3;//Beat length in m
Theta=13.5;//Angle between acoustic wave and the light waves

f=va/(Lb*sind(Theta));//Acoustic frequency in Hz
mprintf("\n f=%.2f MHz",f/1e6);//Division by 10^6 to convert into MHz
//The answers vary due to round off error
