s=%s

R1=100*10^3
R2=10^6
C1=10*10^-6
C2=10^-6


T1=(1/R1)*(1/(s*C1))*(1/R2)*(1/(s*C2))

L1=-1/(s*C1*R1);
L2=-1/(s*R2*C1);
L3=-1/(s*C2*R2);

delta=1-(L1+L2+L3)+(L1*L3)
del1=1;

TF=(T1*del1)/delta ;
disp(TF,"C/R = ")


