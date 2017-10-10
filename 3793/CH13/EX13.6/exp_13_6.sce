clear;
clc;
Ybus=zeros(4,4);
Za=%i*.1;
Z12=%i*.25;
Z14=%i*.4;
Z43=%i*.1;
Z42=%i*.2;
Z32=%i*.1;
Z13=%i*.5;
Zg=%i*4;

V1=1;
V2=complex(.9787,-.0513);
V3=complex(1.019,.0445);
V4=complex(1.0098,-.0176);
Ybus(1,1)=1/Zg+1/Z12+1/Z13+1/Z14;
Ybus(1,2)=-1/Z12;
Ybus(2,1)=Ybus(1,2);
Ybus(1,3)=-1/Z13;
Ybus(3,1)=Ybus(1,3);
Ybus(1,4)=-1/Z14;
Ybus(4,1)=Ybus(1,4);
Ybus(2,2)=1/Z12+1/Z32+1/Z42;
Ybus(2,3)=-1/Z32;
Ybus(3,2)=Ybus(2,3);
Ybus(2,4)=-1/Z42;
Ybus(4,2)=Ybus(2,4);
Ybus(3,3)=1/Z13+1/Z43+1/Z32;
Ybus(3,4)=-1/Z43;
Ybus(4,3)=Ybus(3,4);
Ybus(4,4)=1/Z14+1/Z43+1/Z42;
Z=inv(Ybus);
Zt34=Z(3,3)+Z(4,4)-2*Z(3,4);
V=[V1;V2;V3;V4];
I12=(V1-V2)/Z12;
I13=(V1-V3)/Z13;
I14=(V1-V4)/Z14;
I23=(V2-V3)/Z32;
I24=(V2-V4)/Z42;
I34=(V3-V4)/Z43;
Zaa=-Za;
Zden=Zt34-Zaa;
L1234=Zaa/Z12*((Z(1,3)-Z(1,4))-(Z(2,3)-Z(2,4)))/Zden;
L1334=Zaa/Z13*((Z(1,3)-Z(1,4))-(Z(3,3)-Z(3,4)))/Zden;
L1434=Zaa/Z14*((Z(1,3)-Z(1,4))-(Z(4,3)-Z(4,4)))/Zden;
L2334=Zaa/Z32*((Z(2,3)-Z(2,4))-(Z(3,3)-Z(3,4)))/Zden;
L2434=Zaa/Z42*((Z(2,3)-Z(2,4))-(Z(4,3)-Z(4,4)))/Zden;
I112=I12+L1234*I34;
I113=I13+L1334*I34;
I114=I14+L1434*I34;
I223=I23+L2334*I34;
I224=I24+L2434*I34;
L12=abs(I112)/(4*abs(I12))*100;
L13=abs(I113)/(4*abs(I13))*100;
L14=abs(I114)/(4*abs(I14))*100;
L23=abs(I223)/(1.3333*abs(I23))*100;
L24=abs(I224)/(1.3333*abs(I24))*100;
mprintf(" Line-outage distribution factors are L1234=%.3f, L1334=%.3f, L1434=%.3f, L2334=%.3f and L2434=%.3f\n",L1234,L1334,L1434,L2334,L2434);
mprintf("New values of line current are I12=%.3f %.3f, I13=%.3f+%.3f, I14=%.3f+%.3f, I23=%.3f+%.3f and I24=%.3f+%.3f\n",real(I112),imag(I112),real(I113),imag(I113),real(I114),imag(I114),real(I223),imag(I223),real(I224),imag(I224));
mprintf("Loading after tripping in percentage is L12=%.3f percent,L13=%.3f percent, L14=%.3f percent, L23=%.3f percent and L24=%.3f percent",L12,L13,L14,L23,L24);

