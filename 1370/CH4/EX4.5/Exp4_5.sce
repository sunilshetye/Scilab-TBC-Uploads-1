//Example 4.5
clc
disp("P = 100 kW,  cos(phi) = 0.8 lagging")
disp("V_L = 11 kV,  R_a = 0.4 ohm,  X_s = 3 ohm")
disp("For three phase load,  P = sqrt(3)*V_L*I_L*cos(phi)")
il=(1000*10^3)/(sqrt(3)*11*0.8*10^3)
format(5)
disp(il,"Therefore,  I_L(in A) =")
disp("Now  I_L = I_a as for star connected alternator I_L = I_ph")
disp("Therefore,  I_aph = 65.6 A         ... full load per phase armature current")
disp("For lagging p.f. loads,")
disp("(E_ph)^2 = (V_ph*cos(phi)+I_a*R_a)^2 + (V_ph*sin(phi)+I_a*X_s)^2")
vp=(11*10^3)/sqrt(3)
format(9)
disp(vp,"Now  V_ph = V_L / sqrt(3) =                 ... as star connected")
eph=(((6350.853*0.8)+(65.6*0.4))^2)+(((6350.853*0.6)+(65.6*3))^2)
p=sqrt(eph)
format(8)
disp(p,"Therefore,  E_ph(in V) = ")
el=(sqrt(3)*6491.47)*10^-3
format(6)
disp(el,"Therefore,  E_line(in kV) =")
regu=((6491.47-6350.853)/6350.853)*100
disp(regu,"and  %Regulation(in percentage) = (E_ph-V_ph / V_ph)*100 =")
disp("For lagging p.f. loads, regulation is always positive.")
