
//OptoElectronics and Fibre Optics Communication, by C.K Sarkar and B.C Sarkar
//Example 5.5
//OS=Windows 10
////Scilab version Scilab 6.0.0-beta-2(64 bit)
clc;
clear;

//given
lamda=0.85*1e-6;//wavelength of GaAs in m
n1=3.6;//refractive index
L=200e-6//length of the cavity in m
K=L*(2*n1)/lamda;//number of modes
mprintf("\n Number of modes=%.0f ",K);//the answer vary due to rounding//multiplication by 1e6 to convert the unit to um
u=2*n1*L;//partial product
v=(lamda)^2;//partial product
dellamda=v/u;//separation wavelength between the two mode in m
mprintf("\nThe separation wavelength between the two mode=%.2f nm",dellamda*1e9);//multiplication by 1e9 to convert the unit to nm// the answer given in textbook is wrong the unit is nm but the textbook gives it as um
