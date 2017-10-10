// Example 7.8
// Three-Phase Circuit with Line Impedance
V_ab_m=45*10^3; // Volts
Z_l=complex(0.5,3); // Each transmission line impedance
Z=complex(4.5,9); // Load impedance
V_l_m=V_ab_m // Line voltage
V_phi=V_ab_m/sqrt(3); // Phase voltage
Z_Y=Z_l+Z; // total phase impedance
I_l=V_phi/(abs(Z_Y));
P= 3*real(Z_Y)*(I_l)^2; // Real power generated by source
Q= 3*imag(Z_Y)*(I_l)^2; // Reactive power generated by source
P_L=3*real(Z)*I_l^2; // Real power that reaches the load
Eff=P_L/P;
disp(I_l,"RMS line current(in Amps)=")
disp(P,"Real power generated by source(in Watt)= ")
disp(Q,"Reactive power generated by source(in VAr)=")
disp(P_L,"Real power that reaches the load(in Watt)=")
disp(Eff,"Power transfer Efficiency=")
