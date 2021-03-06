//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 13.6
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
Id=1e-9;//Dark current of a silicon PIN photodiode in A
P=500e-9;//Optical power in W
R=0.65;//Responsivity in A/W
Rl=1000;//Value of load resistor in Ohms
e=1.6e-19//Electronic charge in C
kB=1.38e-23;//Boltzmann constant in SI Units
Deltaf=100e6;//Detector bandwidth in Hz
T=300;//Missing data- Temperature in K

I=R*P;//Signal current in A
mprintf("\n I=%.3f uA",I/1e-6)//Division by 10^(-6) to convert into uA
//Let the root mean square shot noise current be Ins
//The rms shot noise current due to signal is:
Ins=sqrt(2*e*I*Deltaf);//As the root mean square shot noise current is the square root of mean square shot noise current in A
mprintf("\n The rms shot noise current due to signal = %.2f nA",Ins/1e-9);//Division by 10^(-9) to convert into nA
//The answers vary due to round off error

//The rms shot noise current due to dark current is:
Ins=sqrt(2*e*Id*Deltaf);//As the root mean square shot noise current is the square root of mean square shot noise current in A
mprintf("\n The rms shot noise current due to dark current = %.2f nA",Ins/1e-9);//Division by 10^(-9) to convert into nA

//The rms shot thermal noise current is:
Ins=sqrt(4*kB*T*Deltaf/Rl);//As the root mean square shot noise current is the square root of mean square shot noise current in A
mprintf("\n The rms shot thermal noise current = %.2f nA",Ins/1e-9);//Division by 10^(-9) to convert into nA
//The answers vary due to round off error
SNR=((R*P)^2)*Rl/(4*kB*T*Deltaf);//Corresponding Signal-to-noise ratio
mprintf("\n SNR = %f",SNR);//The answers vary due to round off error
mprintf("\n SNR in dB = %f dB",10*log10(SNR));//For conversion to dB
//The answers vary due to round off error
