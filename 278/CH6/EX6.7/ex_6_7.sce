syms d
Wmax=180
Wmin=-180
sigmau=1070
sigmay=910
sigmae=0.5*sigmau
Ka=0.7
Ksur=0.8
Ksz=0.85
Kf=1
A=(%pi/4)*d^2
Wm=(Wmax+Wmin)/2
sigmam=(Wm)/A
disp(sigmam,"Mean stress=")
Wv=(Wmax-Wmin)/2
sigmav=(Wv*10^3)/A
disp(sigmav,"Variable stress=")
sigmaea=sigmae*Ka
disp(sigmaea,"Endurance limit in reverse axial loading=")
0=(sigmam/sigmay)-((sigmav*Kf)/(sigmaea*Ksur*Ksz)-(1/FS)//according to Soderberg's relation
d=sqrt(1800)
disp(d,"d=")
