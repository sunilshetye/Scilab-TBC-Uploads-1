//Section-12,Example-5,Page no.-SS.60
//To find the Intrinsic and Extrinsic conductivity.
clc;
n_i=2.5*10^13
u_n=3800                   //cm^2/V sec
u_e=1800                  //cm^2/V sec
N_Ge=4.41*10^22              //no. of Ge atoms per cm^3
e=1.6*10^-19                         //Coulombs
C_i=n_i*e*(u_n+u_e)
disp(C_i,'Intrinsic conductivity(mho per cm)')
N_D=N_Ge/10^7
n=N_D                           //concentration of electrons per cm^3
p=((n_i)^2)/N_D                  //concentration of holes per cm^3
C_n=(e*(N_D)*(u_n))
disp(C_n,'Conductivity of n-type germanium semiconductor(mho/cm)')
