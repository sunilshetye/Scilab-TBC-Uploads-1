r=100;
c=1000*10^(-6);
vm=9;
vr=0.8;
disp("Part a");
vrms=vr/(2*sqrt(3));
disp("the r.m.s. value of the ripple voltage (in V) is"); disp(vrms);
disp("Part b");
vdc=vm-vr/2;
disp("the dc output voltage (in V) is"); disp(vdc);
disp("Part c");
rip=vrms/vdc;
disp("the ripple factor is"); disp(rip);