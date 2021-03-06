
// Theory and Problems of Thermodynamics
// Chapter 11
// Kinetic Theory of Gases
// Example 5
clear ;clc;

//Given data
V1 = 1                  // X-component velocity low range
V2 = 1.6                // X-component velocity upper range

// Caluclations
// Required fraction from The Maxwell-Boltzmann distribution of the X-component // velocity

// F = (1/sqrt(%pi))integrate(exp(-X^2),'X',1,1.6)
// F = 1/2*((2/sqrt(%pi))integrate(exp(-X^2),'X',1,1.6) - (2/sqrt(%pi))integrate// (exp(-X^2),'X',0,1))

F = 0.5*(erf(1.6) - erf(1))

// Output results
mprintf('The fraction of molecules of a gas X-component velocities in the range Vmp and 1.6Vmp = %4.4f', F)
