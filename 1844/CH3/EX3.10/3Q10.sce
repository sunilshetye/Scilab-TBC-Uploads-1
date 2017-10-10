clc
L=882.1 // in m
a = 65*10^(-7)//in ()1 degree F)^-1
Tm=65
To=84
Ct= L * a * (Tm-To)
l1=100
k1=2+1/6
l2= 150
k2=4+12/60
l3=50
k3=1+1/10
l4=200
k4=7+48/60
l5=300
k5=3
l6=82.1
k6=5+1/6
Cs= l1*(1-cosd(k1))+l2*(1-cosd(k2))+l3*(1-cosd(k3))+l4*(1-cosd(k4))+l5*(1-cosd(k6))+l6*(1-cosd(k6))
TC=Ct-Cs
CL=L+TC
printf('Corrected Length =%f m',CL)
