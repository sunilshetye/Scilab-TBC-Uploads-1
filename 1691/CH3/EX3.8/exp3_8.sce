//Example 3.8
clc
disp("f = 20 kHz  hence T = 1/f = 50*10^-6 sec")
disp("Now  T = t_p+t_f+t_a = t_p+t_f       ...Neglecting t_a")
disp("Therefore,  50*10^-6 = t_p+t_f")
disp("Now  Duty cycle = t_p/T = 1/10")
disp("Therefore,  t_p = T/10 = 5*10^-6 sec")
tf=50-5
disp(tf,"Therefore,  t_f(in usec) = ")
disp("i_E(max) = nV/R")
disp("Therefore,  nV/R = 5*10^-3         ...(1)")
disp("t_p = nL/R")
disp("Therefore,  nL/R = 5*10^-6         ...(2)")
disp("Dividing equations (1) and (2), V = 1000 L         ...(3)")
disp("And  V = V_CC / n+1 = 30 / n+1      ...(4)")
disp("The collector voltage pulse extents from V_CC-V to V_CC+V_Y")
disp("Therefore,  Peak of the pulse = [V_CC+V_Y] - [V_CC-V] = V + V_Y")
disp("Therefore,  V + V_Y = 10    (Given)")
disp("and  t_f = (n/n+1)*L/R*V_CC/V_Y = 45*10^-6")
disp("Therefore,  nL/R*V_CC/(n+1)*1/V_Y = 45*10^-6")
disp("(5*10^-6)*V/V_Y = 45*10^-6")
disp("Using equation(5),  (5*10^-6)*(10-V_Y/V_Y) = 45*10^-6")
disp("10 - V_Y = 9 V_Y")
disp("V_Y = 1 V")
disp("V = 10 - V_Y = 9 V")
disp("Using equation(4),  n = 2.3333")
disp("Using equation(3),  L = 9 mH")
disp("Using equation(2),  R = 4.2 k-ohm")
disp("The designed circuit can be shown as in the fig 3.73")
disp("Neglecting base current,")
disp("V_BE = V_CC*R2 / R1+R2")
disp("Therefore,  1 = 30*R2 / R1+R2")
disp("Therefore,  R1 = 29 R2")
disp("So let  R2 = 1 k-ohm")
r1=29
disp(r1,"R1(in k-ohm) =")
disp("This is required potential divider components")
