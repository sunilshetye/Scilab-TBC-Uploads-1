//clc()
T = 300;//K
T1 = 335;//K
P = 150;//kPa
//lnPs = 13.8858 - 2788.51 / ( T - 52.36)
Ps = exp(13.8858 - 2788.51 / ( T - 52.36));
Ps1 = exp(13.8858 - 2788.51 / ( T1 - 52.36));
Pa = Ps;//(Vapour pressure at dew point is equal to the partial pressure of the vapour)
Y = Pa / (P - Pa);
Ys = Ps1 / (P - Ps1);
PS = Y * 100 / Ys;
disp("%",PS,"(a)Percent saturation = ")
Ma = 78.048;
Mb = 28;
Q = Y * Ma / Mb ;
disp("kg benzene/kg nitrogen",Q,"(b)Quantity of benzene per kilgram of nitrogen = ")
V = 1;//m^3 ( basis )
Vstp = 22.4143;//m^3/kmol
Pstp = 101.3;//kPa
Tstp = 273.15;//K
N = V * P * Tstp/(Vstp * Pstp * T1);
y = Y / ( 1 + Y );
Nbenzene = N * y;
C = Nbenzene * Ma;
disp("kg/m^3",C,"(c)Kilogram of benzene per m^3 of nitrogen = ")
P1 = 100;//kPa
Pbenzene = y * P1;
T1 = 2788.51 / ( 13.8858 - log (Pbenzene)) + 52.36;
disp("K",T1,"(d)Dew point = ")
Per1 = 60;//%
Y2 = Y * (1- Per1/100);
//Y2 = Pa / (P - Pa)
P = Pa / Y2 + Pa;
disp("kPa",P,"(e)Pressure required = ")