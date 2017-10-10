//Example 4_3
clc();
clear;
//To calculate the lattice constant
M=6.94                        //units in a.m.u
density=530                  //units in kg/m^3
n=2
N=6.02*10^26                //units in kg/mol
a=((n*M)/(density*N))^(1/3)*10^10
printf("Lattice constant is %.2f angstrom",a)
