kT = 26*10^-3; //in eV
ni = 1.5*10^10;
eps0 = 8.84*10^-14; //in F/m
eps = 11.9*eps0;
Vbe = 0.7;
q = 1.6*10^-19;
Nde = 10^18;
Nab = 10^17;
Ndc = 10^16;
Db = 30;
Lb = 10*10^-4;
Wb = 10^-4;
De = 10;
Le = 10*10^-4;
We = 10^-4;
A = 4*10^-6;
Vf = 1;
Vr1 = 5;
Vr2 = 6;
Vbi = kT*log(Nab*Ndc/ni^2);
disp(Vbi,"built in voltage (in V) = ")
dW1 = (2*eps*(Vbi+Vr1)*Ndc/(q*Nab*(Nab+Ndc)))^0.5;
dW2 = (2*eps*(Vbi+Vr2)*Ndc/(q*Nab*(Nab+Ndc)))^0.5;
disp(dW1,"depletion width (in cm) on the base side of the BCJ at 5 V = ")
disp(dW2,"depletion width (in cm) on the base side of the BCJ at 6 V = ")
Wbn1 = Wb - dW1;
disp(Wbn1,"neutral base width (in cm) at 5V = ")
Wbn2 = Wb - dW2;
disp(Wbn2,"neutral base width (in cm) at 6V = ")
gammae = 1- (Nab*De*Wbn1)/(Nde*Db*We)
disp(gammae,"emitter efficiency (for a narrow emitter of width We) = ")
B = 1 - Wbn1^2/2/Lb^2;
disp(B,"the base transport factor = ")
alpha = B*gammae;
disp(alpha,"alpha = ")
betae = alpha/(1-alpha);
disp(betae,"current gain = ")
Nbo = ni^2/Nab;
Ic1 = q*A*Db*Nbo/Wbn1*(exp(Vf/kT)-1);
disp(Ic1,"collector current (in A) at 5V = ")
Ic2 = q*A*Db*Nbo/Wbn2*(exp(Vf/kT)-1);
disp(Ic2,"collector current (in A) at 6V = ")
g0 = Ic2-Ic1/(6-5);
disp(g0,"The output conductance = ")