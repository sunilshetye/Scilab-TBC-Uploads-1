clear;
clc;
z1=2.00;
z2=(-.250);
z3=1.200;
z4=11.00;
z5=(-1.00);
//z1,z2,z3 are currents and z4,z5 is voltage
//if v2 is short circuited
z11=(1/(2+(24/10)));
z22=(6/10)*z11;
z33=(4/10)*z11;
z44=z33*6;
z55=z22*4;
//when v1 is short ckted;
z2a=(1/(4+(12/8)));
z1a=(6/8)*z2a;
z3a=(2/8)*z2a;
z4v=z3a*6;
z5v=z2a*4;
H=[z11 -z22; -z22 z2a; z33 z3a; z55 z4v; -z55 z5v];
H1=[H]';
W=[100 0 0 0 0; 0 100 0 0 0; 0 0 75 0 0; 0 0 0 75 0; 0 0 0 0 75;]
G=H1*W*H;
R=[.0100 0 0 0 0; 0 .0100 0 0 0; 0 0 .0133 0 0; 0 0 0 .0133 0; 0 0 0 0 .0133];
F=H*inv(G)*(H')*inv(R);
Rtemp=[diag(F)];
fun=(1-F(1,1))+(1-F(2,2))+(1-F(3,3))+(1-F(4,4))+(1-F(5,5));
mprintf("Performance function is %3.f",fun);


