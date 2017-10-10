c=4*10^(-6);
v1=16;
v2=24;
t=2*10^(-3);
disp("Part a");
rate=(v2-v1)/t;
disp("the average rate of change of voltage (in V/s) is"); disp(rate);
disp("Part b");
i=c*rate;
disp("the average current (in mA) into the capacitor is"); disp(i*10^3);
disp("Part c");
q=c*(v2-v1);
disp("the increase in charge (in μC) on the capacitor is"); disp(q*10^6);