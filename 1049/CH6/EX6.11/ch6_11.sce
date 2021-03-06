clear;
clc;
V_s=230;
V_m=sqrt(2)*V_s;
a=45;
R=10;
V_o=(2*V_m/%pi)*cosd(a);
I_o=V_o/R;
V_or=V_m/sqrt(2);
I_or=I_o;
P_dc=V_o*I_o;
P_ac=V_or*I_or;
RE=P_dc/P_ac;    printf("rectification efficiency=%.4f",RE);
FF=V_or/V_o;    printf("\nform factor=%.4f",FF);
VRF=sqrt(FF^2-1);    printf("\nvoltage ripple factor=%.4f",VRF);
I_s1=2*sqrt(2)*I_o/%pi;
DF=cosd(a);
CDF=.90032;
pf=CDF*DF;    printf("\npf=%.5f",pf);
HF=sqrt((1/CDF^2)-1);    printf("\nHF=%.5f",HF);
printf("\nactive power=%.2f W",P_dc);
Q=2*V_m*I_o*sind(a)/%pi;    printf("\nreactive power=%.3f Var",Q);