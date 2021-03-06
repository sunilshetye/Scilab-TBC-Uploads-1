// Exa 10.2
// To calculate the received signal power at the receiver antenna and the SNR of the received signal.

clc;
clear all;

//As we have to use data from Eg 10.1, 
D=10000;  // in metres
TxEIRP=30;  //Effective Isotropic Radiated Power(EIRP)dBW
lamda=0.2;  //in metres
Pt=10;  //trasmitted power in dBW
Gt=20; //transmitter gain in dBi
Gr=3;  //receiver gain in dBi
Lo=6;//total system lossses in dB
Nf=5;  //noise figure in dB
BW=1.25; //mHz
k=1.38*10^-23;  //Boltzmann constant
T=290;  //temperature in degree kelvin
//additional data given in this eg
hr=40; //height of receiver in metre
ht=2; //trasmittter antenna height in metres

//solution
Lp=20*log10(hr*ht/D^2);
Pr=Lp+Pt+Gt+Gr-Lo;// received power in dBW
No=10*log10(k*T);  //Noise density in dBW
NO=No+30;  //factor of '30' to convert from dBW to dBm
Pn=Nf+10*log10(BW*10^6)+NO;// noise signal power in dBm
SNR=(Pr+30)-Pn;
printf('The received signal power is %d dBm\n ',round(Pr+30)); //factor of '30' to convert from dBW to dBm
printf('SNR is %d dB\n',SNR);   
