v1=10;
v2=20;
r1=10^3;
r2=2*10^3;
r3=3*10^3;
r4=4*10^3;
r5=5*10^3;
v=v1*r2/(r1+r2);
r=r3+r1*r2/(r1+r2);
v5=(v2-v)*r5/(r5+r);
vth=v2-v5;
rth=r*r5/(r+r5);
i=vth/(rth+r4);
disp("the current (in mA) in R4 is"); disp(i*10^3);