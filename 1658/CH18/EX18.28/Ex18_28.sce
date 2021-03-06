clc;
VCC=4.5;
RC=1.5*10**3;
RE=0.27*10**3;
R2=2.7*10**3;
R1=27*10**3;
B=44;
VBE=-0.3;
VB=-VCC*R2/(R1+R2);
disp('V',VB*1,"VB=");
VE=VB-VBE;
disp('V',VE*1,"VE=");
IE=-VE/RE;
IC=IE;
disp('mA',IC*10**3,"IC=");
VRC=IC*RC;
disp('V',VRC*1,"VRC=");
VC=-[VCC-VRC]
disp('V',VC*1,"VC=");
VCE=VC-(VE);
disp('V',VCE*1,"VCE=");
