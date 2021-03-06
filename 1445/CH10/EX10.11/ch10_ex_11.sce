//CHAPTER 10- THREE-PHASE INDUCTION MACHINES
//Example 11

disp("CHAPTER 10");
disp("EXAMPLE 11");

//VARIABLE INITIALIZATION
P1=4;                         //number of poles
s=5/100;                      //slip
f=60;                         //in Hertz

//SOLUTION

//solution (a)
N_s=(120*f)/P1;
N_r=N_s*(1-s);
N_r=round(N_r);               //to round off the value
disp(sprintf("(a) The speed of the motor is %d rpm",N_r));

//solution (b)
P2=6;
N_s=(120*f)/P2;
disp(sprintf("(b) The speed of the generator is %d rpm",N_s));

//END
