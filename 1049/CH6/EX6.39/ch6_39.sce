clear;
clc;
f=50;
w=2*%pi*f;
R=5;
L=0.05;
disp("for no current transients");
phi=atand(w*L/R);    printf("triggering angle=%.2f deg",phi);
disp("for worst transients");
phi=90+atand(w*L/R);    printf("triggering angle=%.2f deg",phi);