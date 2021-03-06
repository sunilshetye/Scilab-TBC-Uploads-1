kT = 26*10^-3; //in eV
ni = 1.5*10^10;
eps0 = 8.84*10^-14; //in F/m
eps = 11.9*eps0;
q = 1.6*10^-19;
Nde = 10^18;
Nab = 10^17;
Ndc = 5*10^16;
Db = 30;
Lb = 15*10^-4;
De = 10;
Le = 5*10^-4;
Vf = 1;
B = 100;
Vr = 5;
Wbn = Db*Nde*Le/(De*Nab*B);
disp(Wbn,"neutral base width (in cm) = ")
Vbi = kT*log(Nab*Ndc/ni^2);
disp(Vbi,"built in voltage (in V) = ")
//dW = (2*eps*(Vbi+Vr)*Nde/(q*Nab*(Nab+Nde)))^0.5;
dW = (2*eps*(Vbi+Vr)*Ndc/(q*Nab*(Nab+Ndc)))^0.5;
disp(dW,"the depletion width (in cm) on the base side of the EBJ for a 5 volt bias at the base collector junction")
Wb = Wbn + dW;
disp(Wb, "base width (in cm) = ")