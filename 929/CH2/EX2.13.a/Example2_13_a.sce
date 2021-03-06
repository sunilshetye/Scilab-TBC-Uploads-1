//Example 2.13(a)

clear;

clc;

R0=100;//Data taken from Example 2.11

alpha=0.00392;//Data taken from Example 2.11

Vref=15;

P=0.2*10^(-3);

i=(P/R0)^(0.5)-(0.41*10^(-3));

pV=0.05;

Vrefc=pV*Vref+0.25;

Vrefr=Vref-Vrefc;

R3=2/(2*i);

//R0+R1+(R2/2)=Vrefr/i;

Rtot=Vrefr/i;

p=0.01;

R2=(2*p*Rtot)+221.1748472;//220 ohms are added to be on the safe side

R1=(Rtot-(R2/2)-R0)+108.15494;//Tolerance 1%

vO=9.97;//Data from Example 2.12

R1u=R1+(R2/2);

dT=1;//obtained from Example 2.12

d2=alpha*dT;

vO=0.1;//Sensitivity (Refer Example 2.12)

Anum=vO*(2+(R1u/R0)+(R0/R1u));

Aden=Vrefr*d2;

A=Anum/Aden;//Overall Gain by using Eq.2.47

printf("Designed Circuit for Calibration :");

printf("\nR1=%.1f kohms",R1*10^(-3));

printf("\nR2=%.f ohms",R2);

printf("\nR3=%.f kohms",R3*10^(-3));

printf("\nA=%.1f V/V",A);