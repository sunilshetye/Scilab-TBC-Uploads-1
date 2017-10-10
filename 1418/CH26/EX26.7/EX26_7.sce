//EXAMPLE 26.7
//LONG SHUNT COMPOUND GENERATOR

clc;
funcprot(0);

//Variable Initialisation
Po=300*10^3;.............//Output power in Watts
V=600;.............//Terminal voltage in Volts
Rsh=75;............//Resistance of shunt field in Ohms
Ra=0.03;...........//Resistance of armature in Ohms
Rse=0.012;.........//Resistance of series field in Ohms
Rd=0.036;...........//Diverter resistance in Ohms
Rcf=0.011;.........//Commutating field winding resistance in Ohms
Io=Po/V;..........//Output current in Amperes
Ish=V/Rsh;..........//Current through shunt field in Amperes
Ia=Io+Ish;...........//Armature current in Amperes

Vse=Ia*Rse;........//Voltage drop on series field in Volts
Rc=(Rse*Rd)/(Rse+Rd);........//Combined resistance of series field resistance and diverter resistance in Ohms
Rta=Ra+Rc+Rcf;.........//Total armature circuit resistance in Ohms
Va=Ia*Rta;..........//Armature voltage drop in Volts
Eg=V+Va;..........//EMF generated in the armature in Volts
disp(Eg,"EMF generated in the armature in Volts:");

Pg=Eg*Ia/1000;..........//Power generated by the armature in Kila Watts
y=round(Pg*10)/10;

disp(y,"Power generated by the armature in Kilo Watts:");





