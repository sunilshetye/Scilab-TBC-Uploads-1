clc;
hie=1100;
hre=2.5*10**-4;
hfe=50;
hoe=24*10**-6;
rL=10*10**3;
RS=1*10**3;
hic=hie;
hrc=1-hre;
hfc=-(1+hfe);
Ai=hfc/(1+hoe*rL);
disp(Ai);
Ri=hie+hrc*-Ai*rL;
disp('kOhm',Ri*10**-3,"Ri=");
Av=(-Ai*rL)/Ri;
disp(Av);
