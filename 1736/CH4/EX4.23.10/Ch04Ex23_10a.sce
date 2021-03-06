// Scilab Code Ex4.10a: Page-141 (2006)
clc; clear;
E_F = 1;    // For simplicity assume Fermi energy to be unity, eV
k = 1.38e-023;      // Boltzmann constant, J/mol/K
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
dE = 0.5;        // Exces energy above Fermi level, eV
T = 300;        // Room temperature, K
E = E_F + dE;    // Energy of the level above Fermi level, eV
f_E = 1/(exp((E-E_F)*e/(k*T))+1);    // Occupation probability of the electron at 0.1 eV above E_F
printf("\nAt 300 K:");
printf("\n=========");
printf("\nThe occupation probability of electron at %3.1f eV above Fermi energy = %11.9f", dE, f_E);
E = E_F - dE;    // Energy of the level below Fermi level, eV
f_E = 1/(exp((E-E_F)*e/(k*T))+1);    // Occupation probability of the electron at 0.1 eV below E_F
printf("\nThe occupation probability of electron at %3.1f eV below Fermi energy = %11.9f", dE, f_E);

// Result 
// At 300 K:
// =========
// The occupation probability of electron at 0.5 eV above Fermi energy = 0.000000004
// The occupation probability of electron at 0.5 eV below Fermi energy = 0.999999996 
