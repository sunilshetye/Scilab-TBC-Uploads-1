//Windows 10
// Scilab 6.0.0

//Chapter 3 Liquids

clc;
clear;

//Initialisation of Variables
p= 388.6 //vapor pressure for benzene in mm
p1=26.5 //vapor pressure for benzene in mm
T= 60 //temperature in C
R= 1.99 //calories in cal mole^-1 A^-1

//Calculations
Lv= log10(p/p1)*2.303*R*273*(273+T)/(T)

//Results
mprintf("Heat of Vapourisation of Benzene = %d cal per mole",Lv+2);
