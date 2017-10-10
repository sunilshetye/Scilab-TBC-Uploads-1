// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 1-Properties of Fluid
// Problem 1.31

//Given Data Set in the Problem
h=2*10^-3
st=0.073575
theta=0
dens=1000
g=9.81

//Calculations
//Using rise=4*surface tension/(density *g *diameter of capillary)
d=4*st/(dens*g*h)
mprintf("The diameter of the capillary is %f cm",d*100)
