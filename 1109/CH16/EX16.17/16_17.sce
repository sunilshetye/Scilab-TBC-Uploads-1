clear;
clc;
Ri1=500;d=15;
P=d/8.686;
N=exp(P);
R1=Ri1*(1-(1/N));
R2=Ri1/(N-1);
printf("The desired attenuator will be:\n");
printf(" R1 = %f ohms\n",round(R1));
printf(" R2 = %f ohms\n",round(R2));
