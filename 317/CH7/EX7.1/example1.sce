// calculate saturation current and cutoff voltage
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 7-1, page 228

clear;clc; close;

// Given data
Vcc=30;// collector supply voltage in volts
Rc=3*10^3;// collector resistance in ohms

// Calculations
Icsat=Vcc/Rc;// saturation current in amperes
Vcecutoff=Vcc;// cutoff voltage in volts 
disp("Amperes",Icsat,"Saturation Current")
disp("Volts",Vcecutoff,"cutoff voltage")

// Result
// saturation current is 10 mAmperes
// cutoff voltage is 30 Volts
