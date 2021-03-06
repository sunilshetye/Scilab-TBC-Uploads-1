clc
clear
//INPUT DATA
n=4//no.of atoms in Face centered cubic lattice
d=6250//density of potassium bromide in Kg/m^3
AW=60.2//molecular weight of crysal with face centered cubic lattice
N=6.023*10^26//Avagadro's number per Kg mol

//CALCULATION
a=(((n*AW)/(d*N))^(1/3))/10^-10//The lattice constant in armstrong *10^-10

//OUTPUT
printf('The lattice constant is %3.3f*10^-10 Armstrong',a)
