v=20;
l=8;
r=400;
disp("Part a");
t0=l/r;
t1=46*10^(-3);
i=v*(1-exp(-t1/t0))/r;
disp("the current (in mA) 46 ms after closing the switch is"); disp(i*10^3);
disp("Part b");
i1=27.5*10^(-3);
t2=-log(1-i2/i)*t0;
disp("the time taken (in ms) to reach 27.5 mA is"); disp(t2*10^3);