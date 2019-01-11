//clc()
z(1) = 10.0035;
T(1) = 40;
Ta = 20;
h = 0.5;
for i = 1:20
    k11(i) = z(i);
    k12(i) = 5*10^-8*(T(i) - Ta)^4;
    z1 = z(i) + h/2;
    T1 = T(i) + h/2;
    k21(i) = z1;
    k22(i) = 5*10^-8*(T1 - Ta)^4;
    z1 = z(i) + h/2;
    T1 = T(i) + h/2;
    k31(i) = z1;
    k32(i) = 5*10^-8*(T1 - Ta)^4;
    z1 = z(i) + h;
    T1 = T(i) + h;
    k41(i) = z1;
    k42(i) = 5*10^-8*(T1 - Ta)^4;
    T(i+1) = T(i) + ( k11(i) + 2* k21(i) + 2*k31(i) + k41(i))*h/6;
    z(i+1) = z(i) + ( k12(i) + 2* k22(i) + 2*k32(i) + k42(i))*h/6;
end
x=0:0.5:10;
plot(x,T(1:21))
xtitle("T vs x","x","T")