clc;
//e.g 19.7
Vcc=-18;
Rc=4.3*10**3;
Re=1*10**3;0
RL=3*10**3;
R1=39*10**3;
R2=8.2*10**3;
beta1=200;
Vbe=-0.7;
Vth=(Vcc*R2)/(R1+R2);
disp('V',Vth*1,"Vth=");
Rth=(R1*R2)/(R1+R2);
disp('kohm',Rth*10**-3,"Rth=");
Ie=(Vth-Vbe)/(Re+(Rth/beta1));
disp('mA',Ie*10**3,"Ie=");
re1=(30*10**-3)/(-Ie);
disp('ohm',re1*1,"re1=");
re=(Rc*RL)/(Rc+RL);
Ri=beta1*re;
Ris=(Rth*Ri)/(Rth+Ri);
disp('kohm',Ris*10**-3,"Ris=");
disp('Kohm',re*10**-3,"re=");
Av=re/re1;
disp(Av);