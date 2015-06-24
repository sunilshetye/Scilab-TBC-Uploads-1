//chapter 37
//example2
clc
//given
e=1.6*10^-19 //in coul
r=5.1*10^-11 //radius of hydrogen atom in meter
m=9.1*10^-31// mass of electron in kg
epsilon0=8.9*10^-12 //in coul2/nt-m2
p=((e^2)/4)*sqrt(r/(%pi*epsilon0*m))
disp(p,"Orbital dipole moment in amp-m2 is")
