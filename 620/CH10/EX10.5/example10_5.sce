vb=13.2;
vg=14.5;
rb=0.5;
rg=0.1;
rl=2;
r1=rb+rl*rg/(rl+rg);
i1=vb/r1;
ib1=i1;
il1=i1*rg/(rg+rl);
ig1=i1*rl/(rl+rg);
r2=rg+rl*rb/(rl+rb);
i2=vg/r2;
ig2=i2;
il2=i2*rb/(rb+rl);
ib2=i2-il2;
disp("Part a");
ib=ib2-ib1;
disp("the battery current (in A) is"); disp(ib);
disp("Part b");
ig=ig2-ig1;
disp("the generator current (in A) is"); disp(ig);
disp("Part c");
il=il1+il2;
disp("the load current (in A) is"); disp(il);
disp("Part d");
vl=il*rl;
disp("the load voltage (in V) is"); disp(vl);