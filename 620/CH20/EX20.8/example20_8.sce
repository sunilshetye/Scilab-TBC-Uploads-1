l1=4;
l2=8;
v=120;
f=60;
disp("Part a");
x_l1=2*%pi*f*l1;
x_l2=2*%pi*f*l2;
x_l=x_l1+x_l2;
disp("he total inductive inductance (in kΩ) is"); disp(x_l*10^(-3));
disp("Part b");
i=v/x_l;
disp("the reading of ammeter (in mA) is"); disp(i*10^3);
disp("Part c");
v1=i*x_l1;
v2=i*x_l2;
disp("the voltage drop (in V) across 4 H coil is"); disp(v1);
disp("the voltage drop (in V) across 8 H coil is"); disp(v2);