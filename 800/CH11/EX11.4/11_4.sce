clc
clear
exec('11_4.sci');
X2=1-(1/exp((log(1/(1-X1)))*(1/2)*((2)^.5)));
disp("X2 =")
disp(X2)