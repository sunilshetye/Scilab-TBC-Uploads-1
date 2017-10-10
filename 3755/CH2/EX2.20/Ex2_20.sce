clear
//
//
//

//Variable declaration    
a=0.27*10^-9;    //lattice constant(m)
c=0.494*10^-9;    //height of cell(m)
M=65.37;         //atomic weight
N=6.023*10^26;      //avagadro number
n=6;     //number of atoms

//Calculations
V=3*sqrt(3)*a^2*c/2;      //volume of unit cell(m^3)
rho=n*M/(N*V);    //density of zinc(kg/m^3)

//Result"
printf("\n volume of unit cell is %0.3f *10^-29 m^3",V*10^29)
printf("\n density of zinc is %0.0f kg/m^3",rho)
printf("\n answer in the book is wrong")
