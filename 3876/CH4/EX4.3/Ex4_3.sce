//Windows 10
// Scilab 6.0.0
//Chapter 4 Solutions Nonelectrolytes

clc;
clear;

//Initialisation of Variables
mn= 0.0134 //weight in gms
mo= 0.0261 //weight in gms
mh= 0.0081 //weight in gms
T= 30 //temperature in C
P= 3 //pressure in atm
r= 4/5  //ratio of nitrogen to oxygen

//CALCULATIONS
V= mn*(273+T)*1000/273
V1= V*r
V2= V1*P
V3= mo*(273+T)*(1-r)*P*1000/273
V4= mh*(273+T)*r*1000/273
V5= V4*P
V6= V2-V1
V7= V5-V4

//RESULTS
mprintf("Volume of oxygen= %.1f ml",V)
mprintf("\nVolume of nitrogen= %.1f ml",V3)
mprintf("\nVolume of helium = %.1f ml",V5)
mprintf("\nVolume of nitrogen and helium would be expelled = %.1f ml",V7)
