clc

t=0.3 //cm
E=200 //GPa
v=0.3
i=2
j=4
m=3
L=5000 //N

a1=0-4
a2=0-4
disp(a1,a2)
aj=4-0
a4=4-0
disp(aj,a4)
am=4-4
a3=4-4
disp(am,a3)

bi=1-1
b2=1-1
disp(bi,b2)
bj=1+1
b4=1+1
disp(bj,b4)
bm=-1-1
b3=-1-1
disp(bm,b3)

k22=(10^6/8)*(3.3*0+1.16*16)
printf('k22=%f\n',k22)
k44=(10^6/8)*(3.3*4*+1.16*16)
printf('k44=%f\n',k44)
k24=(10^6/8)*(3.3*0+1.16*4*-4)
printf('k24=%f\n',k24)
k42=(10^6/8)*(3.3*0+1.16*4*-4)
printf('k42=%f\n',k42)
k23=0
printf('k23=%f\n',k23)
k32=0
printf('k32=%f\n',k32)
k43=(10^6/8)*(3.3*2*-2+1.16*0)
printf('k43=%f\n',k43)
k34=(10^6/8)*(3.3*2*-2+1.16*0)
printf('k34=%f\n',k34)
k33=(10^6/8)*(3.3*4+1.16*0)
printf('k33=%f\n',k33)


kuu=[k22 k23 k24;k32 k33 k34;k42 k43 k44]
disp(kuu)
kuv=10^6*[0 1.16 -1.16;0.99 0 -0.99;-0.99 -1.16 2.15]
disp(kuv)
kvv=10^6*[6.6 0 -6.6;0 0.58 -0.58;-6.6 -0.58 7.18]
disp(kvv)
kvu=10^6*[0 0.99 -0.99;1.16 0 -1.16;-1.16 -0.99 2.15]
disp(kvu)

ke=[kuu kuv;kvu kvv]
disp(ke)

k1=[3.97 -1.65 -2.32 0;-1.65 1.65 0 0;-2.32 0 2.32 0;0 0 0 0]
disp(k1)
k2=[2.15 -1.16 -0.99 0;-0.99 0 0.99 0;-1.16 1.16 0 0;0 0 0 0]
disp(k2)
k3=[2.15 -0.99 -1.16 0;-1.16 0 1.16 0;-0.99 0.99 0 0;0 0 0 0]
disp(k3)
k4=[7.18 -0.58 -6.6 0;-0.58 0.58 0 0;-6.6 0 6.6 0;0 0 0 0]
disp(k4)

ka=[k1 k2 ;k3 k4]
disp(ka)

k5=[0 0 0 0;0 2.32 0 -2.32;0 0 1.65 -1.65;0 -2.32 -1.65 3.97]
disp(k5)
k6=[0 0 0 0;0 0 1.16 -1.16;0 0.99 0 -0.99;0 -0.99 -1.16 2.15]
disp(k6)
k7=[0 0 0 0;0 0 0.99 -0.99;0 1.16 0 -1.16;0 -1.16 -0.99 2.15]
disp(k7)
k8=[0 0 0 0;0 6.6 0 -6.6;0 0 0.58 -0.58;0 -6.6 -0.58 7.18]
disp(k8)

kb=[k5 k6 ;k7 k8]
disp(kb)

K=[ka+kb]
disp(K)

Qy4=((3*(-5000))/4*1)*{(1/2)*(1+1)+0.33*[-0.25*(1-1+1)-0.75]}
printf('Qy4=%f N\n',Qy4)                                 // textbook ans is wrong
Qy2=((3*(-5000))/4*1)*{(1/2)*(1+1)-0.33*[1+0.75*(1-1+1)-0.75]}
printf('Qy2=%f N\n',Qy2)                                 // textbook ans is wrong

Q=[0 0 0 0 0 Qy4 0 Qy2]
disp(Q)
u1=0
u3=0
v1=0
v3=0

Z=[3.97 -2.32 0 -1.16;-2.32 3.97 -0.99 2.15;0 -0.99 7.18 -6.6;-1.16 2.15 -6.6 7.18]
disp(Z)
z=inv(Z)
disp(z)
X=(z*[0;0;-2512.5;-2512.5]) 
disp(X)
X1= X*10**-6
disp(X1,"u2 u4 v2 v4 is= ")

Y=[-2 2 0 0 0 0;0 0 0 -4 0 4;-4 0 4 -2 2 0]
disp(Y)
W=(Y*[0;-0.0012;0;0;-0.0068;0])
disp(W)
W1=W*(1/8)
disp(W1,"espx epsy gammaxy is= ")

y=[1 0.3 0;0.3 1 0;0 0 0.35]*W1
disp(y)
u=(200*10^9/0.91)
disp(u)
U=u*y
disp(U,"sigmax sigmay tauxy in Pa is= ")
