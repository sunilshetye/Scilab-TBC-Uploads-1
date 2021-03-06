V=400
P0=1210
I0=8.7
Ri=(V/sqrt(3))^2/P0*3
disp(Ri)
pf=P0/sqrt(3)/V/I0
theta0=acos(pf)
Xm=Ri/tan(theta0)
disp(Xm)

P1=6050
V1=200
I1=47.8
R=P1/3/I1/I1
R1=0.42
disp(R1)
R2=R-R1
disp(R2)
Z=V1/sqrt(3)/I1
X=sqrt(Z*Z-R*R)
disp(X)

ns=750
n=710
ws=ns*2*%pi/60
s=1-n/ns
Z=R1+R2/s+%i*X
I2=V/sqrt(3)/Z
I0=I0*exp(-%i*theta0)
I1=I0+I2
disp(norm(I1))
pf=real(I1)/norm(I1)
disp(pf)
T=norm(3*I2*I2*R2/s/ws)
disp(T)
Pout=T*ws*(1-s)
Pin=sqrt(3)*V*norm(I1)*pf
effi=Pout/Pin
disp(effi)

s=1
Z=R+%i*X
I2=V/sqrt(3)/Z
I1=I0+I2
disp(norm(I1))
Tstart=norm(3*I2*I2*R2/s/ws)
disp(Tstart)

smaxT=R2/sqrt(R1^2+X^2)
Z=R1+R2/smaxT+%i*X
I2=V/sqrt(3)/norm(Z)
Tmax=3*I2*I2*R2/smaxT/ws
disp(Tmax)
disp(smaxT)
