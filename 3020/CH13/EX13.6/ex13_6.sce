clc;
clear all;
a = 2.814e-10; // Lattice constant in meters
h = 1; //Miller indices of diffracted plane 
k = 0; //Miller indices of diffracted plane
l = 0;// Miller indices of diffracted plane
d = a/sqrt(h^2+k^2+l^2);// Lattice constant
disp('m',d,'The lattice spacing for plane (1,1,0) is')
