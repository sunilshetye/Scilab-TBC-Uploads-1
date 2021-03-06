clc
Z1=14+%i*5;          //Assigning values to parameters
Z2=18+%i*10;
V=200;
Y1=1/Z1;
Y2=1/Z2;
Yeq=Y1+Y2;
Zeq=1/Yeq;
I1=V/Z1;
I2=V/Z2;
I=V/Zeq;
P1=I1^2*real(Z1);
P2=I2^2*real(Z2);
[r,t]=polar(Zeq);
[r1,t1]=polar(Z1);
[r2,t2]=polar(Z2);
pf1=cos(t1);
pf2=cos(t2);
pf=cos(t);
disp("Mho",Y1,polar(Y1),"Y1");
disp("Mho",Y2,polar(Y2),"Y2");
disp("Mho",Yeq,polar(Yeq),"Yeq");
disp("Amperes",I1,polar(I1),"Branch current I1");
disp("Amperes",I2,polar(I2),"Branch current I2");
disp("Amperes",I,polar(I),"Total current I");
disp("Watts",P1,polar(P1),"Power consumed by branch 1");
disp("Watts",P2,polar(P2),"Power consumed by branch 2");
disp(polar(pf1),"Power factor of branch 1");
disp(polar(pf2),"Power factor of branch 2");
disp(polar(pf),"Total Power factor");