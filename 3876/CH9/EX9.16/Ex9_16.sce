//Windows 10
// Scilab 6.0.0
//Chapter 9 Ionic Equilibria and Buffer Action

clc;
clear;

//Initialisation of Variables
c= 1 //Molarity of solution
Kb= 5.3*10**-5  //given
pKw= 14

//CALCULATIONS
pH= pKw+0.5*log10(Kb)+0.5*log10(c)

//RESULTS
mprintf("pH of solution = %.2f",pH)
