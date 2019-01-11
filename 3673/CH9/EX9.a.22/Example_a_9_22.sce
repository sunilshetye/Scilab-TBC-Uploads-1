//Example_a_9_22 page no:420
clc;
Vrph_mag=440/sqrt(3);
Vrph_ang=0;
Vyph_mag=440/sqrt(3);
Vyph_ang=-120;
Vbph_mag=440/sqrt(3);
Vbph_ang=-240;
Irmag=20;
Irang=-40;
Iymag=20;
Iyang=-160;
Ibmag=20;
Ibang=80;
pi=40;
Vl=440;
Il=20;
Zrmag=Vrph_mag/Irmag;
Zrang=Vrph_ang-Irang;
Zymag=Vyph_mag/Iymag;
Zyang=Vyph_ang-Iyang;
Zbmag=Vbph_mag/Ibmag;
Zbang=Vbph_ang-Ibang;
Zrreal=Zrmag*cosd(Zrang);
Zrimag=Zrmag*sind(Zrang);
Zr=Zrreal+(%i*Zrimag);
Zyreal=Zymag*cosd(Zyang);
Zyimag=Zymag*sind(Zyang);
Zy=Zyreal+(%i*Zyimag);
Zbreal=Zbmag*cosd(Zbang);
Zbimag=Zbmag*sind(Zbang);
Zb=Zbreal+(%i*Zbimag);
disp(Zr,"the impedence due to Zr is (in ohm)");
disp(Zy,"the impedence due to Zr is (in ohm)");
disp(Zb,"the impedence due to Zr is (in ohm)");
P=3*Irmag^2*real(Zr);
disp(P,"power consumed is (in W)");
//wattmeter reading
W1=Vl*Il*cosd(30-pi);
W2=Vl*Il*cosd(30+pi);
Pt=W1+W2;
disp(Pt,"the total power is (in W)");
//power consumed varies slightly with text book because Rph value is rounded off in text book