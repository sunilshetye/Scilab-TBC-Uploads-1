clc;
//ex3.8
Vac=30; //volt
Vspk=Vac/0.707; //volt
Vf=0.7; //volt
Vlpk=(Vspk/2)-Vf; //volt
Vave=(2*Vlpk)/%pi; //volt
disp('V',Vspk,"Vspk="); //The answers vary due to round off error
disp('V',Vlpk,"Vlpk="); //The answers vary due to round off error
disp('V',Vave,"Vave="); //The answers vary due to round off error
