clear
//Given
R1=990                        //ohm
R=10.0                        //ohm
E=2
l=1000                            //mm
l1=400                            //mm

//Calculation
Rt=R1+R
I=E/Rt
pd=I*R
K=pd/l
pd1=K*l1

//Result
printf("\n e.m.f. generated by the thermocouple is %0.3f  V", pd1)
