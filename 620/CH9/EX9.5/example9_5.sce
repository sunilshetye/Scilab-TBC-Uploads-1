disp("Part a");
v=1.5;;
r=0.1;
rl=1.2;
il=3*v/(rl+3*r);
disp("the load current (in A) is"); disp(il);
vl=il*rl;
disp("the load voltage (in V) is"); disp(vl);
disp("Part b");
r1=1.5;
il1=4*v/(rl+r1+3*r);
disp("the load curent (in A) is "); disp(il1);
vl1=il1*rl;
disp("the load voltage (in V) is"); disp(vl1);
vab=v-il1*r1;
disp("terminal volatge (in V) across the fourth cell is"); disp(vab);
p=il1^2*r1;
disp("internal power dissipation (in W) is"); disp(p);