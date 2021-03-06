Z = 10*10^-4;
L = 2*10^-4;
Cox = 10^-7;
Vds = 0.1;
Vgs1 = 1.5;
Id1 = 50*10^-6;
Vgs2 = 2.5;
Id2 = 80*10^-6;
slope = Id2-Id1/(Vgs2-Vgs1);
Vt = -Id2/slope + Vgs2;
disp(Vt,"the threshold voltage (in V) = ")
