//Example_a_5_5 page no:204
clc;
Vmag=100;
Vang=0;
f=50;
L1=3+(%i*31.41);
L2=5-(31.83*%i);
L3=10+(%i*150.73);
R1=3;
R2=5;
R3=10;
L1mag=sqrt(real(L1)^2+imag(L1)^2);
L1ang=atand(imag(L1)/real(L1));
I1mag=Vmag/L1mag;
I1ang=Vang-L1ang;
I1real=I1mag*cosd(I1ang);
I1img=I1mag*sind(I1ang)*%i;
I1=I1real+I1img;
disp(I1,"the current passing thorugh 3+31.41i ohm is (in A)");
L2mag=sqrt(real(L2)^2+imag(L2)^2);
L2ang=atand(imag(L2)/real(L2));
I2mag=Vmag/L2mag;
I2ang=Vang-L2ang;
I2real=I2mag*cosd(I2ang);
I2img=I2mag*sind(I2ang)*%i;
I2=I2real+I2img;
disp(I2,"the current passing through 5-31.83i ohm is (in A)");
L3mag=sqrt(real(L3)^2+imag(L3)^2);
L3ang=atand(imag(L3)/real(L3));
I3mag=Vmag/L3mag;
I3ang=Vang-L3ang;
I3real=I3mag*cosd(I3ang);
I3img=I3mag*sind(I3ang)*%i;
I3=I3real+I3img;
disp(I3,"the current passing through 10+150.73i ohm is (in A)");
It=I1+I2+I3;
disp(It,"the total current is (in A)");
V1=R1*I1;
V2=R2*I2;
V3=R3*I3;
V1mag=sqrt(real(V1)^2+imag(V1)^2);
V1ang=atand(imag(V1)/real(V1));
V2mag=sqrt(real(V2)^2+imag(V2)^2);
V2ang=atand(imag(V2)/real(V2));
V3mag=sqrt(real(V3)^2+imag(V3)^2);
V3ang=atand(imag(V3)/real(V3)); 
disp(V1mag,"the magnitude of voltage across 3 ohm resistor is (in V)");
disp(V1ang,"the angle of voltage across 3 ohm resistor is (in degree)");
disp(V2mag,"the magnitude of voltage across 5 ohm resistor is (in V)");
disp(V2ang,"the angle of voltage across 5 ohm resistor is (in degree)");
disp(V3mag,"the magnitude of voltage across 10 ohm resistor is (in V)");
disp(V3ang,"the angle of voltage across 10 ohm resistor is (in degree)");
V0_1h=(I1*(31.41*%i));
V0_1hmag=sqrt(real(V0_1h)^2+imag(V0_1h)^2);
V0_1hang=atand(imag(V0_1h)/real(V0_1h));
V100h=(I2*(-31.83*%i));
V100hmag=sqrt(real(V100h)^2+imag(V100h)^2);
V100hang=atand(imag(V100h)/real(V100h));
V0_5h=(I3*(157.81*%i));
V0_5hmag=sqrt(real(V0_5h)^2+imag(V0_5h)^2);
V0_5hang=atand(imag(V0_5h)/real(V0_5h));
V500h=(I3*(-6.37*%i));
V500hmag=sqrt(real(V500h)^2+imag(V500h)^2);
V500hang=atand(imag(V500h)/real(V500h));
V500hang=V500hang-180;
disp(V0_1hmag,"the magnitude of voltage across 0.1 henry inductance is (in V)");
disp(V0_1hang,"the angle of voltage across 0.1 henry inductance is (in V)");
disp(V100hmag,"the magnitude of voltage across 100 milli henry inductance is (in V)");
disp(V100hang,"the angle of voltage across 100 milli henry inductance is (in V)");
disp(V0_5hmag,"the magnitude of voltage across 0.5 henry inductance is (in V)");
disp(V0_5hang,"the angle of voltage across 0.5 henry inductance is (in V)");
disp(V500hmag,"the magnitude of voltage across 500 milli henry inductance is (in V)");
disp(V500hang,"the angle of voltage across 50 milli henry inductance is (in V)");//the angle is added with 180 degree to give positive value hence both value i.e in text book and scilab result are same mathematically
//here angle values varies a little here more accurate values are used for calcultaion hence values are not altered in any variable but in text book values are rounded off and they produce approximate results
