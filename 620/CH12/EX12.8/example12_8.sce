im=0.05;
s=1/im;
rm=3;
v1=5;
v2=15;
v3=50;
r1=s*v1-rm;
disp("the value of R1 (in kΩ) is"); disp(r1);
r2=s*v2-(rm+r1);
disp("the value of R2 (in kΩ) is"); disp(r2);
r3=s*v3-(rm+r1+r2);
disp("the value of R1 (in kΩ) is"); disp(r3);