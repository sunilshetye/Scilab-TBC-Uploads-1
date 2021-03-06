f=50
MechLoad=(8+0.5)*1000
Pein=MechLoad
Vt=231
Ef=750/sqrt(3)
Xs=16
delta=asin(Pein/3*Xs/Ef/Vt)
Ef=Ef*exp(-%i*delta)
Ia=(Vt-Ef)/%i/Xs
ns=120*50/4
ws=ns/60*2*%pi
Tdev=Pein/ws
Tshaft=8000/ws
disp(norm(Ia))
disp(real(Ia)/norm(Ia))
disp(acos(real(Ia)/norm(Ia))*180/%pi)
disp(Tdev)
disp(Tshaft)

Ef=600/sqrt(3)
delta=0
Ia=(Vt-Ef)/%i/Xs
kVAR=sqrt(3)*400*norm(Ia)
disp(norm(Ia))
disp(real(Ia)/norm(Ia))
disp(kVAR)
C=norm(Ia)/Vt/2/%pi/f

Ef=300/sqrt(3)
Ia=(Vt-Ef)/%i/Xs
kVAR=sqrt(3)*400*norm(Ia)
disp(norm(Ia))
disp(real(Ia)/norm(Ia))
disp(kVAR)
L=Vt/norm(Ia)/2/%pi/f

kVAR=6000
Ia=kVAR/sqrt(3)/400*%i
Ef=Vt-%i*Xs*Ia
disp(Ef*sqrt(3))
