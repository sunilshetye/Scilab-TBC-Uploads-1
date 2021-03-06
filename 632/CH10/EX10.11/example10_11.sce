//clc()
R = 100;//kg ( basis - residue )
MCaSO4 = 136.144;
MMgSO4 = 120.376;
mCaSO4r = 9;//kg
mMgSO4r = 5;//kg
mH2SO4r = 1.2;//kg
minertr = 0.5;//kg
mCO2r = 0.2;//kg
mH2O = 84.10;//kg
NCaSO4 = mCaSO4r / MCaSO4;
NMgSO4 = mMgSO4r / MMgSO4;
//CaCO3 + H2SO4 = CaSO4 + H2O + CO2
//MgSO4 + H2SO4 = MgSO4 + H2O + CO2
mCaCO3 = NCaSO4 * 100.08;
mMgCO3 = NMgSO4 * 84.312;
mtotallime = minertr + mCaCO3 + mMgCO3;
PCaCO3 = mCaCO3 * 100/ mtotallime;
PMgCO3 = mMgCO3 *100/ mtotallime;
Pinerts = minertr *100/ mtotallime;
disp("%",PCaCO3,"(a)Percentage of CaCO3 in limestone = ")
disp("%",PMgCO3,"   Percentage of MgCO3 in limestone = ")
disp("%",Pinerts,"   Percentage of inerts in limestone = ")
NH2SO4 = NCaSO4 + NMgSO4;
mH2SO4 = NH2SO4 * 98.08;
Pexcess = mH2SO4r * 100 / ( mH2SO4);
disp("%",Pexcess,"(b)The percentage excess of acid used = ")
macidt = mH2SO4 + mH2SO4r;
Pacidic = 12;//%
mwaterin = macidt * (100 - Pacidic)/ Pacidic;
mwaterr = (NCaSO4 + NMgSO4)*18.016;
mwatert = mwaterin + mwaterr;
mvaporized = mwatert - mH2O;
m = mvaporized * 100/mtotallime;//water vaporized per 100kg of limestone
disp("kg",m,"(c)the mass of water vaporized per 100kg of limestone = ")
mCO2pr = (NCaSO4 + NMgSO4)*44;
mCO2rel = mCO2pr - mCO2r;
m1 = mCO2rel * 100 / mtotallime;//CO2 per 100kg of limestone
disp("kg",m1,"(d)the mass of CO2 per 100kg of limestone = ")