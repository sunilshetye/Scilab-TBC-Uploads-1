r=100;
f=60;
v=120;
vr=60;
disp("Part a");
vl=sqrt(v^2-vr^2);
disp("the reading of voltmeter (in V) connected across the coil is"); disp(v1);
disp("Part b");
deg=atan(vl/vr)*180/%pi;
disp("th phase angle (in deg) between the applied voltage and the current is"); disp(deg);
disp("Part c");
i=vr/r;
disp("the current (in A) in the circuit is"); disp(i);
disp("Part d");
x_l=vl/i;
l=x_l/(2*%pi*f);
disp("the inductance (in H) of the coil is"); disp(l);