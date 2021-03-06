c=12*10^(-6);
v=240;
f=60;
l=0.25;
r=75;
disp("Part a");
x_l=2*%pi*f*l;
z=sqrt(r^2+x_l^2);
i=v/z;
p=i^2*r;
disp("the true power (in W)is"); disp(p);
disp("Part b");
x_c=1/(2*%pi*f*c);
q_c=v^2/x_c;
q_l=i^2*x_l;
q=q_l-q_c;
disp("the reactive power (in VAr) is");disp(q);
disp("Part c");
s=sqrt(p^2+q^2);
disp("the apparent power (in VA) is"); disp(s);
i1=s/v;
disp("the total line current (in A) is"); disp(i1);