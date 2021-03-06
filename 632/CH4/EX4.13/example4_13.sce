//clc()
//4HCl + O2 = 2Cl2 + 2H2O
n = 1;//mol ( Basis 1 mol of HCl )
NO2 = n / 4;
NO2supp = 1.5 * NO2;
Nair = NO2supp * 100 / 21;
V = 100;//m^3
Vair = V * Nair / n;
disp("m^3",Vair,"(a)Volume of air admitted = ")
P1 = 80;//% ( HCl converted)
Ncon = n * P1 /100;
N2 = Ncon/4;// oxygen required
NH2O = Ncon / 2;
NCl2 = Ncon / 2;
nHCl = n - Ncon;
nO2 = NO2supp - N2;
Nnitro = Nair - NO2supp;
Ntotal = nHCl + nO2 + NH2O + NCl2 + Nnitro;
V1 = V * Ntotal;
P1 = 1;//bar
T1 = 290;//K
P2 = 1.2;//bar
T2 = 400;//K
V2 = V1 * P1 * T2 / ( P2 * T1);
disp("m^3",V2,"(b)Volume of gas leaving = ")
VCl2 = NCl2 * V;
Pstp = 1.01325;//bar
Tstp = 273;//K
Vstp = 22.4143;//m^3/kmol
Vstp1 = Tstp * P1 * VCl2 / (T1 * Pstp);
Nstp = Vstp1/Vstp;
m = Nstp * 70.90;
disp("kg",m,"(c)Kilograms of Chlorine produced = ")
Ntotaldry = nHCl + nO2 + NCl2 + Nnitro;//dry basis
p1 = nHCl*100/Ntotaldry;
p2 = nO2*100/Ntotaldry;
p3 = NCl2*100/Ntotaldry;
p4 = Nnitro*100/Ntotaldry;
disp("%",p1,"(d)Percent composition of HCl in exit stream = ")
disp("%",p2,"   Percent composition of Oxygen in exit stream = ")
disp("%",p3,"   Percent composition of Chlorine in exit stream = ")
disp("%",p4,"   Percent composition of nitrogen in exit stream = ")