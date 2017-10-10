
//Variable declaration
epsilon0=8.85*10**-12;
A=750*10**-6;     //area(m**2)
d=5*10**-3;     //seperation(m)
Q=2.5*10**-10;    //charge(C)
epsilonr=3.5;

//Calculation
V=Q*d/(epsilon0*epsilonr*A);       //voltage(V)

//Result
printf('voltage is %0.3f   V  \n',(V))