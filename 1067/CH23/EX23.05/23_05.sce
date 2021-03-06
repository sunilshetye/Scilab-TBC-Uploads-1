clear;
clc;
v=1;
r=1250e3;
V=600;
x1=.05*%i;
x2=.05*%i;
x0=.02*%i;
ia1=v/(x1+x2);
ia2=-ia1;
ia=ia1+ia2;
ia0=0;
a=1*%e^(%i*(120*%pi/180));
b=a^2;
ia=(ia0+ia1+ia2);
ib=(ia0+(b*ia1)+(a*ia2));
ic=(ia0+(a*ia1)+(b*ia2));
ia0r=real(ia);
ia0i=imag(ia);
iam=sqrt((ia0r^2)+(ia0i^2));
ia1r=real(ib);
ia1i=imag(ib);
ibm=sqrt((ia1r^2)+(ia1i^2));
ia2r=real(ic);
ia2i=imag(ic);
icm=sqrt((ia2r^2)+(ia2i^2));
iaa=0;
iba=atand(ia1i/ia1r);
ica=atand(ia2i/ia2r);
ibase=r/(sqrt(3)*V);
ibm=ibm*ibase;
ibm=round(ibm/100)*100;
mprintf("fault current for double line to ground fault=%dA",ibm);
