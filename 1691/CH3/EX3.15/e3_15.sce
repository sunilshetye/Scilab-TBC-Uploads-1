//example4.15
clc
disp("UTP=5 V, LTP=3 V, V_CC=12 V")
disp("V_i=V_B2=UTP=5 V when Q2 is ON.")
v=5-0.7
disp(v,"V_E(in V)=(V_i)-(V_BE1)=V_B2-V_BE2=5-0.7=")
disp("Let I_C2=I_E2=1 mA        ...In ON state")
r=4.3/(10^-3)
disp(r,"Therefore  R_E(in ohms)=V_E/I_E2=")
disp("Now, (I_C2)*(R_C2)=(V_CC)-(V_E)-(V_CE2)_sat    ..Let (V_CE2)_sat =0.2V")
disp("(1*10^-3)*(R_C2)=12-4.3-0.2")
c=(12-4.3-0.2)/(10^-3)
disp(c,"Therefore R_C2(in ohms)= ")
i=(10^-3)/10
disp(i,"Now  I2(in A)=0.1(I_C2)=")
r=5/(10^-4)
disp(r,"Therefore  R2(in ohms)= ")
i=(10^-3)/100
disp(i,"I_B2(in A)=(I_C2)/(h_fe)_min =")
disp("Therefore  I2+I_B2=(V_CC-V_B2)/(R_C1-R1)")
disp("Therefore  R_C1+R1=(12-5)/((10^-4)+(10^-5))=63.6363*10^3  ..(1)")
disp("Now V_B2=B_B1=LTP=3 V  and  Q1 is ON.")
i=3/(50*10^3)
disp(i,"I1(in A)=(V_B2)/R2=")
c=(3-0.7)/(4.3*10^3)
format(10)
disp(c,"amd I_C1(in A)=I_E1=(V_B1-V_BE1)/R_E= ")
disp("Therefore V_CC=(R_C1)*(I_C1+I1)+I1*(R1+R2)    ..(2)")
disp("Using equation (1) in equation (2),")
disp("Therefore V_CC=(I_C1*R_C1)+I1*(R_C+R1)+I1*R2")
disp("12=(5.348*10^-4*R_C1)+(60*10^-6*63.6363*10^3)+(60*10^-4*50*10^3)")
r=(12-(60*63.6363*10^-3)-(60*50*10^-3))/(5.348*10^-4)
format(7)
disp(r,"Therefore R_c1(in ohm)=")
r=(63.6363*10^3)-(9.6892*10^3)
disp(r,"Therefore R1(iin ohms)=")
disp("Thus when Q2 is ON,")
v=12-(7.5)
disp(v,"V_o(in V)=V_CC-(I_C2(on))*R_C2=")
disp("And when Q2 is OFF,")
disp("V_o=V_CC=12 V")
disp("The designed circuit is shown ib the fig 3.93")
