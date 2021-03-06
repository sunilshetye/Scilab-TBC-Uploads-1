clear;
clc;
pf=.8;
f=50;
rp=.8;
X=.4;
Xd=.2;
H=10;
v=1;
Xeq=Xd+X;
Ig=rp/(v*pf);
angle=acosd(pf);
E=sqrt(((v+Ig*Xd*Xeq)^2)+((Ig*Xd*pf)^2));
del=atand((Ig*Xd*pf)/(v+Ig*Xd*Xeq));
P=(E*v)/Xeq;
mprintf("Steady state power limit is %.3f pu\n",P);
Pc=cosd(del)*P;
mprintf("Synchronizing power coefficient is %.3f pu\n",Pc);
M=H/(3.14*f);
gaama=sqrt(Pc/M);
fre=gaama/(2*%pi);
mprintf("frequency of free oscillation  is %.3f Hz\n",fre);
T=1/fre;
mprintf("time period of free oscillation is %.3f s\n",T);
