//Ex:1.37
clc;
clear;
close;
Irms=15;// current in Amp
// Erms=(120*%pi*Irms*le)/(y*r)
// here Irms=15 amp and le=7y/2
// then
// Erms=(120*%pi*15*7y/2)/(y*r)
// Erms=6300*%pi/r
// Now, le=7y, then
// Erms1=(120*%pi*Irms1*7y)/(y*r)
// Erms1=105*%pi/r
// and Erms=Erms1
// 6300*%pi/r=105*%pi*Irms1/r
// Irms1=6300/105
Irms1=6300/105;// current in Amp
printf("The current = %d Amp", Irms1);