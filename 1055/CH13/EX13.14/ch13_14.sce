// Determine the subtransient currents in all phases of machine-1 , the fault current and the voltages of machine 1 and voltage at the fault point.
clear
clc;
Z1eq= %i*(((8+5)*(8+5+12))/(100*(13+25)));
Z2eq=Z1eq;
Zoeq=%i*(5*45)*(10^-2)/(5+45);
Ea=1;
Ia1=Ea/(Z1eq+ ((Zoeq*Z2eq)/(Zoeq+Z2eq)));
Ia2=(-Ia1*Zoeq)/(Zoeq+Z2eq);
Iao=(-Ia1*Z2eq)/(Zoeq+Z2eq);
Va1=Ea-(Ia1*Z1eq);
Va2=-Ia2*Z2eq;
Vao=Va2;
Ia=0;
Ib=(-.5 - %i*.866)*Ia1 + ((-.5 + %i*.866)*Ia2) + Iao;
Ic=(-.5 + %i*.866)*Ia1 + (-.5 - %i*.866)*Ia2 + Iao;
ia1=Ia1*25/38;
IA1=%i*ia1;
ia2=Ia2*25/38;
IA2=-%i*ia2;
IA=IA1 + IA2;
IB=IA1*(-.5 - %i*.866) + IA2*(-.5 + %i*.866);
IC=IA1*(-.5 + %i*.866) + IA2*(-.5 - %i*.866);
Va=Va1+Va2+Vao;
Vb=0;
Vc=0;
Vab=.2564-Vb;
Vbc=Vb-Vc;
Vca=Vc-.2564;
VA1=Ea-IA1*(%i*.05);
VA2=-IA2*(%i*.05);
VA=VA1+VA2;
VB=(((-.5 - %i*.866)*VA1) +((-.5 + %i*.866)*VA2));
VC=VA1*(-.5 + %i*.866) + VA2*(-.5 - %i*.866);
VAB=VA-VB;
VBC=VB-VC;
VCA=VC-VA;
//Answers don't match due to difference in rounding off of digits
disp(Ia,"fault currents ,Ia=");
disp(Ib,"Ib=");
disp(Ic,"Ic=");//Calculation in book is wrong.
disp(IA,"IA=");
disp(IB,"IB");
disp(IC,"IC");
disp("Voltages at fault point");
disp(Vab,"Vab(p.u)=");
disp(Vbc,"Vbc(p.u)=");
disp(Vca,"Vca(p.u)=");
disp(VAB,"VAB=");
disp(VBC,"VBC=");
disp(VCA,"VCA=");
