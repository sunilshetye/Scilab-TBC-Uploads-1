r1=50;
r2=10;
vp=10;
p=0.63;
s=0.8;
t=0.5*10^(-3);
disp("Part a");
t0=s*t;
disp("the time constant (in ms) of the circuit is"); disp(t0*10^3);
l=t0*(r1+r2);
disp("the inductance (in mH) of the coil is"); disp(l*10^3);