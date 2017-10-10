clc
//variable Initialisation
V=415//Voltage Input in Volts
f=50//supply frequency in Hz
P=4//No of Poles
N1=1450//Rotor Speed in rpm
N2=1290//Rotor Speed in rpm for case II
R1=1.01
R2=0.69
X1=1.08
X2=1.60
Xm=36
Tl=42//Rated torque in N-m
//Solution
Vph=V/sqrt(3)
Ns=120*f/P
Ws=2*%pi*Ns/60
Wm=2*%pi*N1/60
K=Tl/(Wm^2)
s=(Ns-N2)/Ns//Slip
Wm2=Ws*(1-s)
Tl=K*(Wm2^2)//Load Torque in N-m
Tl2=Tl*Wm2//Torque in Synchronous Watts
I2=sqrt((Tl2*s)/(3*R2*(1-s)))
Z=R1+(R2/s)+(%i*(X1+X2))//Impedance at slip s
V2=I2*abs(Z)//Voltage applied in Volts/Phase
Im=V2/(%i*Xm)
Im1=abs(Im)
Ir=V2/Z//Rotor Current
Is=Ir+Im//Stator Current
a=atand(imag(Is)/real(Is))
Pin=3*V2*abs(Is)*cosd(a)//Input Power
Smax=1/3//Smax is obtain theorotically
I2max=Ws*sqrt(Smax)*(1-Smax)*sqrt(K*Ws/(3*R2))
Nr=Ns*(1-Smax)//Speed at maximum Current
Wmax=2*%pi*Nr/60
T=3*(I2max^2)*R2*(1-Smax)/(Smax*Wmax)//Torque at maximum Current
printf('\n\n The Load torque=%0.1f N-m\n\n',Tl)
printf('\n\n The Rotor Current=%0.1f Amp\n\n',Ir)
printf('\n\n The Stator Supply Voltage=%0.1f Volts\n\n',V2)
printf('\n\n The Motor input current=%0.1f Amp\n\n',Is)
printf('\n\n The Motor input power=%0.1f Watt\n\n',Pin)//The answer provided in the textbook is wrong
printf('\n\n Maximum rotor Current=%0.1f Amp\n\n',I2max)
printf('\n\n The speed at maximum current=%0.1f rad/sec\n\n',Wmax)
printf('\n\n The torque at maximum current=%0.1f N-m\n\n',T)
