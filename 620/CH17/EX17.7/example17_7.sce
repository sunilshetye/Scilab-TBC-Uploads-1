l1=40;
lt1=100;
lt2=36;
disp("Part a");
m=(lt1-lt2)/4;
disp("the mutual inductance (in mH) is"); disp(m);
disp("Part b");
l2=lt1-l1-2*m;
disp("the inductance (in mH) of the second coil is"); disp(l2);
disp("Part c");
k=m/sqrt(l1*l2);
disp("the coefficient of coupling is"); disp(k);