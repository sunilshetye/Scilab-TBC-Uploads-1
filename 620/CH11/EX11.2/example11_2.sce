disp("Part a");
r1=5*10^(-2);
r2=7*10^(-2);
n=400;
i=2;
f=1.5*10^(-4);
d=r2-r1;
a=%pi*d^2/4;
b=f/a;
mmf=n*i;
r=(r1+r2)/2;
l=2*%pi*r;
h=mmf/l;
mu=b/h;
disp("the permeability of the iron core (in Wb/At.m) is");disp(mu);
disp("Part b");
mu0=4*%pi*10^(-7);
mu1=mu/mu0;
disp("the relative permeability is"); disp(mu1);
disp("Part c");
mur=600;
b1=mur*mu0*h;
disp("the flux density in the core (in T) is"); disp(b1);
