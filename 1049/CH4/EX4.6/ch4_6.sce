clear;
clc;
I=.1;
E=200;
disp("in case load consists of (a)L=.2H");
L=.2;
t=I*L/E;    printf("min gate pulse width=%.0f us",t*10^6);
disp("(b)R=20ohm in series with L=.2H");
R=20;
t=(-L/R)*log(1-(R*I/E));    printf("min gate pulse width=%.3f us",t*10^6);
disp("(c)R=20ohm in series with L=2H");
L=2;
t=(-L/R)*log(1-(R*I/E));    printf("min gate pulse width=%.2f us",t*10^6);
