Na = 10^16;
t = 500*10^-8;
kT = 26*10^-3; //in eV
q = 1.6*10^-19;
ni = 1.5*10^10;
eps0 = 8.85*10^-14; //in F/m
eps = 11.9*eps0;
eps1 = 3.9*eps0;
Cox = eps1/t;
disp(Cox,"The oxide capacitance (in F/cm2) = ")
phiF = kT*log(Na/ni);
disp(phiF,"φF(in V) = ")
Wmax = (4*eps*phiF/(q*Na))^0.5;
disp(Wmax,"The maximum depletion width (in cm) = ")
Cmin = eps1/(t+(eps1*Wmax/eps));
disp(Cmin,"The minimum capacitance (in F/cm2) = ")
Cfb = eps1/(t+(eps1/eps*(kT*eps/q/Na)^0.5));
disp(Cfb,"The capacitance (in F/cm2) under flat band conditions = ")
disp("Note that Cfb is ∼ 80% of Cox and Cmin is ∼ 33% of Cox.")