im=50*10^(-6);
rm=3000;
it1=10^(-3);
it2=10*10^(-3);
it3=100*10^(-3);
it4=1;
is1=it1-im;
is2=it2-im;
is3=it3-im;
is4=it4-im;
disp("Part a");
rs1=rm*im/is1;
disp("for a range of 1 mA the shunt resistance (in Ω) is"); disp(rs1);
rs2=rm*im/is2;
disp("for a range of 10 mA the shunt resistance (in Ω) is"); disp(rs2);
rs3=rm*im/is3;
disp("for a range of 100 mA the shunt resistance (in Ω) is"); disp(rs3);
rs4=rm*im/is4;
disp("for a range of 1 A the shunt resistance (in Ω) is"); disp(rs4);
disp("Part b");
vm=im*rm;
disp("at full-scale deflection the voltage drop (in V) is"); disp(vm);
disp("Part c");
rt1=vm/it1;
disp("for a range of 1 mA the total resistance (in Ω) is"); disp(rt1);
rt2=vm/it2;
disp("for a range of 10 mA the total resistance (in Ω) is"); disp(rt2);
rt3=vm/it3;
disp("for a range of 100 mA the total resistance (in Ω) is"); disp(rt3);
rt4=vm/it4;
disp("for a range of 1 A the total resistance (in Ω) is"); disp(rt4);