vo=-6;
vi=0.1;
ri=2;
f=10;
p=6;
k=0.15;
disp("Part a");
av=vo/vi;
disp(av);
a1=av/(1-(k*av));
disp("the voltage gain is"); disp(a1);
disp("Part b");
r=ri*(1-k*av);
disp("the input resistance (in kΩ) is"); disp(r);
disp("Part c");
f1=f*(1-k*av);
disp("the bandwidth (in kHz) is"); disp(f1);
disp("Part d");
p1=p/(1-k*av);
disp("the distortion (in %) is"); disp(p1);
disp("Part e");
gbwp=a1*f1;
disp("the gain-bandwidth product is"); disp(gbwp);
disp("the gain-bandwith prodeuct is same as before feedback");