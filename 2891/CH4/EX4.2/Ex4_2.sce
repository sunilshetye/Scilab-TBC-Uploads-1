//Exa 4.2
clc;
clear;
close;
L=poly(0,'L') //Defining L as lambda
l=10*L
N=20 // number of elements
d=l/N 
// formula : BW=(2*sqrt(2*(L/d)*1/N))
BW1=2*sqrt(horner((2*L/(N*d)),1))
disp(BW1,"Null-to-null BW of end-fire array in radians when l=10*L,N=20:")
l=50*L
N=100 // number of elements
d=l/N 
// formula : BW=(2*sqrt(2*(L/d)*1/N))
BW2=2*sqrt(horner((2*L/(N*d)),1))
disp(BW2,"Null-to-null BW of end-fire array in radians when l=50*L,N=100:")
l=20*L
N=50 // number of elements
d=l/N 
// formula : BW=(2*sqrt(2*(L/d)*1/N))
BW3=2*sqrt(horner((2*L/(N*d)),1))
disp(BW3,"Null-to-null BW of end-fire array in radians when l=20*L,N=50:")
