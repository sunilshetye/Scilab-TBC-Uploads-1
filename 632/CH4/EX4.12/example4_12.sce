//clc()
N = 100;//kmol producer gas
P1 = 25;//% ( Carbon monoxide )
P2 = 4;//% ( Carbon Dioxide )
P3 = 3;//% ( Oxygen )
P4 = 68;//% ( Nitrogen )
N1 = N * P1/100;
N2 = N * P2/100;
N3 = N * P3/100;
N4 = N * P4/100;
NC = N1 + N2;
m = NC * 12;
Ngas = N / m;//moles of gas for 1 kg of Carbon
Vstp = 22.4143;//m^3/kmol
Vstp1 = Vstp * Ngas;
P = 1;//bar
T = 290;//k
Pstp = 1.01325;//bar
Tstp = 273.15;//K
V = T * Vstp1 * Pstp / (Tstp * P );
disp("m^3",V,"(a)Volume of gas at 1 bar and 290 K per kg Carbon = ")
//CO + 1/2 * O2 = CO2
Nrequired  = N1/2 - N3;//(oxygen required)
Nsupplied = Nrequired * 1.2;
PO1 = 21;//% ( Oxygen percent in air)
Nair = Nsupplied * 100/PO1;
V1 = 100;//m^3;
Vair = V1 * Nair / N;
disp("m^3",Vair,"(b)Volume of air required = ")
NCO2 = N2 + N1;
NO2 = Nsupplied - Nrequired;
NN2 = N4 + (Vair * (1 - PO1/ 100));
Ntotal = NCO2 + NO2 + NN2;
PCO2 = NCO2 * 100 / Ntotal;
PO2 = NO2 * 100 / Ntotal;
PN2 = NN2 * 100 / Ntotal;
disp("%",PCO2,"Percent composition of Carbon Dioxide = ")
disp("%",PO2,"Percent composition of Oxygen = ")
disp("%",PN2,"Percent composition of Nitrogen = ")