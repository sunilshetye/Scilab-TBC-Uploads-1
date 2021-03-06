clc;
clear;
//Consider the peak value 8 of observation for calculation in the sum
lambda=0.07107 //wavelength in nm
theta=29.71 //angle in degree
h=4 //x intercept of parallel plane
k=0 //y intercept of parallel plane
l=0 //z intercept of parallel plane

//calculation
d_400=(lambda/(2*sind(theta))) //interplanar distance in nm
alpha=d_400*(sqrt(h^2+k^2+l^2)) 

mprintf("lattice constant of peak no.1 is (110)\n")

