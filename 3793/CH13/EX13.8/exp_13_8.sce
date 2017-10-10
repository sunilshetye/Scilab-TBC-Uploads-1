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
Zb=-Za;
Zt23=Z(2,2)+Z(3,3)-2*Z(2,3);
Zden1=Zt23-Zb;
L1423=Zb/Z14*((Z(1,2)-Z(1,3))-(Z(4,2)-Z(4,3)))/Zden1;
L3423=Zb/Z43*((Z(3,2)-Z(3,3))-(Z(4,2)-Z(4,3)))/Zden1;
L11=(L1423+L1434*L3423)/(1-L2334*L3423);
L12=(L1434+L1423*L2334)/(1-L2334*L3423);
I14d=I14+(L11*I23+L12*I34);
mprintf("Change in current line connected buses 1-4 is %.4f+%.4f",real(I14d),imag(I14d));

