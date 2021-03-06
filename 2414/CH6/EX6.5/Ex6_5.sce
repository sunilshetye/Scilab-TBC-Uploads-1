clc;
//page no 195
//prob no. 6.5
//All frequencies in kHz
//refer Ex 6.4
fi=250;  //input freq
LSB=[fi-1 fi-3 fi-5];  //from Ex 6.4
//
fc=250;  //carrier freq
f0sum=fc+LSB;
f0diff=fc-LSB;
disp(f0sum,f0diff,'(a)  The output frequencies (in kHz) are ');
disp(f0diff,'(b)  At low pass filter,the actual frequencies (in kHz) are ');
