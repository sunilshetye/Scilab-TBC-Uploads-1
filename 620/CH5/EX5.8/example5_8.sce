r=5*10^3;
v=6;
disp("Part a");
disp("the minimum voltage is 0 V and the maximum output voltage is 6 V");
disp("Part b");
v1=0.25*v;
v2=0.75*v;
disp("the two possible output voltages (in V) are"); disp(v1); disp(v2);
disp("Part c");
i=v/r;
disp("the current (in mA) throught the potentiometer in this position is"); disp(i*10^3);
disp("Part d");
p=r*i^2;
disp("he potentiometer power rating (in mW) is"); disp(p*10^3);