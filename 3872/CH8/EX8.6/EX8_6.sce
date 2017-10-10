//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 8 ; Example 8.6
//Scilab Version - 6.0.0 ; OS - Windows

clc;
clear;

Vp = [277; 260*(cos(-120*%pi/180)+%i*sin(-120*%pi/180)); 295*(cos(115*%pi/180)+%i*sin(115*%pi/180))];   //given column vector of phase voltage in volts
Zl1 = 0.087+%i*(0.99);                                                                                  //impedace of line 1 in ohm
Zdel = 22.98+%i*(19.281);                                                                               //impedance of the delta load in ohm
Zl2 = 0.087+%i*(0.99);                                                                                  //impedance of line 2 in ohm 
function [Vp1]=phaseshift(x1,x2)                        //Function for shifting the phase
    [r theta]=polar(x1);
    Vp1=r*(cos(theta+x2*%pi/180)+%i*sin(theta+x2*%pi/180));
endfunction

V0 = (Vp(1,1)+Vp(2,1)+Vp(3,1))/3;                                                                       //zero sequence voltage in V
V1 = (Vp(1,1)+phaseshift(Vp(2,1),120)+phaseshift(Vp(3,1),240))/3;                                       //positive sequence voltage in V
V2 = (Vp(1,1)+phaseshift(Vp(2,1),240)+phaseshift(Vp(3,1),120))/3;                                       //negative sequence voltage in V
I0 = 0;                                                                                                 //zero sequence current in A
I1 = V1/(Zl1+(Zdel/3));                                                                                 //positive sequence current in A
I2 = V2/(Zl2+(Zdel/3));                                                                                 //negative sequence current in A
Ia = I0+I1+I2;                                                                                          //zero source current in A
Ib = I0+phaseshift(I1,240)+phaseshift(I2,120);                                                          //positive source current in A
Ic = I0+phaseshift(I1,120)+phaseshift(I2,240);                                                          //negative source current in A
printf('The zero source current Ia is %.4f amperes and its angle is %.4f degree ',abs(Ia), atand(imag(Ia), real(Ia)));
printf('\nThe positive source current Ib is %.4f amperes and its angle is %.4f degree ',abs(Ib), atand(imag(Ib), real(Ib))+360);
printf('\nThe negative source current Ic is %.4f amperes and its angle is %.4f degree ',abs(Ic), atand(imag(Ic), real(Ic)));





