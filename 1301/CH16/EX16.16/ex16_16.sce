clc;
v1=-20;     //velocity in m/sec
v=  343;
vs=0;     //velocity in m/sec
fs=500;    //original frquency
f1=(fs*(v+v1))/(v-vs);   //doppler effect
disp(f1,"Percieved frequency in Hz = ");   //diplaying result
//470.845