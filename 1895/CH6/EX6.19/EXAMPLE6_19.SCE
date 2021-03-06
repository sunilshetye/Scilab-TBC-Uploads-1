//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 6
//NOISE
clear all;
clc;
printf("EXAMPLE 6.19(PAGENO 310)");

//given
G_1 = 15//gain in first stage in dB
F_1 = 9//noise figure for first stage in dB
F_2 = 20//noise figure for second stage in dB

//calculations
F_1ratio = exp((F_1/10)*log(10));//noise figure of first stage in ratio 
F_2ratio = exp((F_2/10)*log(10));//noise figure of second stage in ratio 
G_1ratio = exp((G_1/10)*log(10));//gain of first stage in ratio
F = F_1ratio + ((F_2ratio - 1)/(G_1ratio));//Overall noise figure 
F_dB= 10*log10(F)////Overall noise figure in dB

//results
printf("\n\nOverall noise figure  = %.2f dB", F_dB );
