l=100*10^(-6);
c=50*10^(-12);
r=100*10^3;
v=50*10^(-3);
disp("Part a");
f=1/(2*%pi*sqrt(l*c));
disp("the resonant frequency (in MHz) is"); disp(f*10^6);
disp("Part b");
ir=v/r;
x_l=2*%pi*f*l;
x_c=1/(2*%pi*f*c);
il=v/x_l;
ic=v/x_c;
disp("current through the resistor (in μA) is"); disp(ir*10^6);
disp("current throught the inductor (in μA) is");disp(il*10^6);
disp("current through the capacitor (in μA) is"); disp(ic*10^6);