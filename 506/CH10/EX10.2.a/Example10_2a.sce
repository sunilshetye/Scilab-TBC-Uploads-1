clear;
clc;

//Caption:amplifier using n channel FET

//Given Data

Vp=-2;//in V
Idss=1.65;//in mA
//it is desired to bias the circut at Id=0.8mA
Ids=0.8;//in mA
Vdd=24;//in V
//Assumption: rd>Rd

Vgs=Vp*(1-(Ids/Idss)^0.5);//in V
disp('V',Vgs,'Vgs=');


//end