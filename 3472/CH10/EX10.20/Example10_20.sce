// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 3: STEADY STATE CHARACTERISTICS AND PERFORMANCE OF TRANSMISSION LINES

// EXAMPLE : 3.20 :
// Page number 149-153
clear ; clc ; close ; // Clear the work space and console

// Given data
f = 50.0                  // Frequency(Hz)
L = 280.0                 // Line length(km)
Z = complex(35,140)       // Series impedance(ohm)
Y = %i*930.0*10**-6       // Shunt admittance(S)
P_r = 40.0*10**6          // Power delivered(W)
V_r = 220.0*10**3         // Voltage at receiving end(V)
PF_r = 0.9                // Lagging power factor

// Calculations
R = real(Z)                                                     // Resistance of the line(ohm)
// Case(a)
I_r_a = P_r/(3**0.5*V_r*PF_r)*exp(%i*-acos(PF_r))   // Receiving end current(A)
I_s_a = I_r_a                                                  // Sending end current(A)
V_r_a = V_r/3**0.5                                             // phasemag voltage at receiving end(V)
V_s_a = V_r_a+I_r_a*Z                                          // Sending end voltage(V)
V_s_a_ll = 3**0.5*V_s_a                                        // Sending end line voltage(V)
V_s_a_llkv = V_s_a_ll/1000.0                                   // Sending end line voltage(kV)
reg_a = (abs(V_s_a_ll)-V_r)/V_r*100                            // Voltage regulation(%)
loss_a = 3*abs(I_r_a)**2*R                                     // Line loss(W)
input_a = P_r+loss_a                                           // Input to line(W)
n_a = P_r/input_a*100                                          // Efficiency of transmission(%)
A_a = 1.0                                                      // Constant
B_a = Z                                                        // Constant(ohm)
C_a = 0                                                        // Constant(mho)
D_a = A_a                                                      // Constant
// Case(b)
V_b = V_r_a+I_r_a*Z/2                                  // Voltage drop across shunt admittance(V)
I_c_b = Y*V_b                                          // Current through shunt admittance(A)
I_s_b = I_r_a+I_c_b                                    // Sending end current(A)
V_s_b = V_b+I_s_b*Z/2                                  // Sending end voltage(V)
V_s_b_ll = 3**0.5*V_s_b                                // Sending end line voltage(V)
V_s_b_llkv = V_s_b_ll/1000.0                           // Sending end line voltage(kV)
angle_V_Is_b = phasemag(I_s_b)                         // Angle between V_r and I_s_b(°)
angle_V_Vs_b = phasemag(V_s_b)                         // Angle between V_r and V_s_b(°)
angle_Is_Vs_b = angle_V_Is_b-angle_V_Vs_b              // Angle between V_s_b and I_s_b(°)
PF_s_b = cosd(angle_Is_Vs_b)                           // Sending end power factor
P_s_b = 3**0.5*abs(V_s_b_ll*I_s_b)*PF_s_b              // Sending end power(W)
n_b = P_r/P_s_b*100                                    // Efficiency of transmission(%)
reg_b = (abs(V_s_b_ll)-V_r)/V_r*100                    // Voltage regulation(%)
A_b = 1+(1.0/2)*Y*Z                                    // Constant
B_b = Z*(1+(1.0/4)*Y*Z)                                // Constant(ohm)
C_b =Y                                                 // Constant(mho)
D_b = A_b                                              // Constant
// Alternative solution for case(b)
V_s_ba = A_b*V_r_a+B_b*I_r_a                           // Sending end voltage(V)
V_s_ba_ll = 3**0.5*V_s_ba                              // Sending end line voltage(V)
V_s_ba_llkv = V_s_ba_ll/1000.0                         // Sending end line voltage(kV)
I_s_ba = C_b*V_r_a+D_b*I_r_a                           // Sending end current(A)
angle_V_Is_ba = phasemag(I_s_ba)                       // Angle between V_r and I_s_b(°)
angle_V_Vs_ba = phasemag(V_s_ba)                       // Angle between V_r and V_s_b(°)
angle_Is_Vs_ba = angle_V_Is_ba-angle_V_Vs_ba           // Angle between V_s_b and I_s_b(°)
PF_s_ba = cosd(angle_Is_Vs_ba)                         // Sending end power factor
P_s_ba = 3**0.5*abs(V_s_ba_ll*I_s_ba)*PF_s_ba          // Sending end power(W)
n_ba = P_r/P_s_ba*100                                  // Efficiency of transmission(%)
reg_ba = (abs(V_s_ba_ll)-V_r)/V_r*100                  // Voltage regulation(%)
// Case(c)
I_c2_c = Y/2.0*V_r_a                              // Current through shunt admittance at receiving end(A)
I_c = I_r_a+I_c2_c                                // Current through impedance(A)
V_s_c = V_r_a+I_c*Z                               // Sending end voltage(V)
V_s_c_ll = 3**0.5*V_s_c                           // Sending end line voltage(V)
V_s_c_llkv = V_s_c_ll/1000.0                      // Sending end line voltage(kV)
I_c1_c = V_s_c*Y/2.0                              // Current through shunt admittance at sending end(A)
I_s_c = I_c+I_c1_c                                // Sending end current(A)
angle_V_Is_c = phasemag(I_s_c)                    // Angle between V_r and I_s_c(°)
angle_V_Vs_c = phasemag(V_s_c)                    // Angle between V_r and V_s_c(°)
angle_Is_Vs_c = angle_V_Is_c-angle_V_Vs_c         // Angle between V_s_c and I_s_c(°)
PF_s_c = cosd(angle_Is_Vs_c)                      // Sending end power factor
P_s_c = 3**0.5*abs(V_s_c_ll*I_s_c)*PF_s_c         // Sending end power(W)
n_c = P_r/P_s_c*100                               // Efficiency of transmission(%)
reg_c = (abs(V_s_c_ll)-V_r)/V_r*100               // Voltage regulation(%)
A_c = 1+(1.0/2)*Y*Z                               // Constant
B_c = Z                                           // Constant(ohm)
C_c =Y*(1+(1.0/4)*Y*Z)                            // Constant(mho)
D_c = A_c                                         // Constant
// Alternative solution for case(c)
V_s_ca = A_c*V_r_a+B_c*I_r_a                      // Sending end voltage(V)
V_s_ca_ll = 3**0.5*V_s_ca                         // Sending end line voltage(V)
V_s_ca_llkv = V_s_ca_ll/1000.0                    // Sending end line voltage(kV)
I_s_ca = C_c*V_r_a+D_c*I_r_a                      // Sending end current(A)
angle_V_Is_ca = phasemag(I_s_ca)                  // Angle between V_r and I_s_c(°)
angle_V_Vs_ca = phasemag(V_s_ca)                  // Angle between V_r and V_s_c(°)
angle_Is_Vs_ca = angle_V_Is_ca-angle_V_Vs_ca      // Angle between V_s_b and I_s_c(°)
PF_s_ca = cosd(angle_Is_Vs_ca)                    // Sending end power factor
P_s_ca = 3**0.5*abs(V_s_ca_ll*I_s_ca)*PF_s_ca     // Sending end power(W)
n_ca = P_r/P_s_ca*100                             // Efficiency of transmission(%)
reg_ca = (abs(V_s_ca_ll)-V_r)/V_r*100             // Voltage regulation(%)
// Case(d).(i)
gamma_l = (Y*Z)**0.5                                                // γl
Z_c = (Z/Y)**0.5                                                    // Surge impedance(ohm)
V_s_d1 = V_r_a*cosh(gamma_l)+I_r_a*Z_c*sinh(gamma_l)                // Sending end voltage(V)
V_s_d1_ll = 3**0.5*V_s_d1                                           // Sending end line voltage(V)
V_s_d1_llkv = V_s_d1_ll/1000.0                                      // Sending end line voltage(kV)
I_s_d1 = V_r_a/Z_c*sinh(gamma_l)+I_r_a*cosh(gamma_l)                // Sending end current(A)
angle_V_Is_d1 = phasemag(I_s_d1)                                    // Angle between V_r and I_s_d(°)
angle_V_Vs_d1 = phasemag(V_s_d1)                                    // Angle between V_r and V_s_d(°)
angle_Is_Vs_d1 = angle_V_Is_d1-angle_V_Vs_d1                        // Angle between V_s_d and I_s_d(°)
PF_s_d1 = cosd(angle_Is_Vs_d1)                                      // Sending end power factor
P_s_d1 = 3**0.5*abs(V_s_d1_ll*I_s_d1)*PF_s_d1                       // Sending end power(W)
n_d1 = P_r/P_s_d1*100                                               // Efficiency of transmission(%)
reg_d1 = (abs(V_s_d1_ll)-V_r)/V_r*100                               // Voltage regulation(%)
A_d1 = cosh(gamma_l)                                                // Constant
B_d1 = Z_c*sinh(gamma_l)                                            // Constant(ohm)
C_d1 = (1/Z_c)*sinh(gamma_l)                                        // Constant(mho)
D_d1 = A_d1                                                         // Constant
// Case(d).(ii)
A_d2 = (1+(Y*Z/2)+((Y*Z)**2/24.0))                       // Constant
B_d2 = Z*(1+(Y*Z/6)+((Y*Z)**2/120))                      // Constant(ohm)
C_d2 = Y*(1+(Y*Z/6)+((Y*Z)**2/120))                      // Constant(mho)
D_d2 = A_d2                                              // Constant
V_s_d2 = A_d2*V_r_a+B_d2*I_r_a                           // Sending end voltage(V)
V_s_d2_ll = 3**0.5*V_s_d2                                // Sending end line voltage(V)
V_s_d2_llkv = V_s_d2_ll/1000.0                           // Sending end line voltage(kV)
I_s_d2 = C_d2*V_r_a+D_d2*I_r_a                           // Sending end current(A)
angle_V_Is_d2 = phasemag(I_s_d2)                         // Angle between V_r and I_s_d(°)
angle_V_Vs_d2 = phasemag(V_s_d2)                         // Angle between V_r and V_s_d(°)
angle_Is_Vs_d2 = angle_V_Is_d2-angle_V_Vs_d2             // Angle between V_s_d and I_s_d(°)
PF_s_d2 = cosd(angle_Is_Vs_d2)                           // Sending end power factor
P_s_d2 = 3**0.5*abs(V_s_d2_ll*I_s_d2)*PF_s_d2            // Sending end power(W)
n_d2 = P_r/P_s_d2*100                                    // Efficiency of transmission(%)
reg_d2 = (abs(V_s_d2_ll)-V_r)/V_r*100                    // Voltage regulation(%)

// Results
disp("PART II - EXAMPLE : 3.20 : SOLUTION :-")
printf("\nCase(a): Short line approximation")
printf("\nSending end voltage, V_s = %.1f∠%.1f° kV (line-to-line)", abs(V_s_a_llkv),phasemag(V_s_a_llkv))
printf("\nVoltage regulation = %.1f percent", reg_a)
printf("\nTransmission efficiency, η = %.1f percent", n_a)
printf("\nA = D = %.f ", A_a)
printf("\nB = %.1f∠%.1f° ohm", abs(B_a),phasemag(B_a))
printf("\nC = %.f \n", C_a)
printf("\nCase(b): Nominal T method approximation")
printf("\nSending end voltage, V_s = %.1f∠%.1f° kV (line-to-line)", abs(V_s_b_llkv),phasemag(V_s_b_llkv))
printf("\nVoltage regulation = %.2f percent", reg_b)
printf("\nTransmission efficiency, η = %.1f percent", n_b)
printf("\nA = D = %.3f∠%.2f° ", abs(A_b),phasemag(A_b))
printf("\nB = %.1f∠%.1f° ohm", abs(B_b),phasemag(B_b))
printf("\nC = %.2e∠%.f° S ", abs(C_b),phasemag(C_b))
printf("\n\tALTERNATIVE SOLUTION:")
printf("\n\tSending end voltage, V_s = %.1f∠%.1f° kV (line-to-line)", abs(V_s_ba_llkv),phasemag(V_s_ba_llkv))
printf("\n\tVoltage regulation = %.2f percent", reg_ba)
printf("\n\tTransmission efficiency, η = %.1f percent", n_ba)
printf("\n\tA = D = %.3f∠%.2f° ", abs(A_b),phasemag(A_b))
printf("\n\tB = %.1f∠%.1f° ohm", abs(B_b),phasemag(B_b))
printf("\n\tC = %.2e∠%.f° S \n", abs(C_b),phasemag(C_b))
printf("\nCase(c): Nominal π method approximation")
printf("\nSending end voltage, V_s = %.f∠%.1f° kV (line-to-line)", abs(V_s_c_llkv),phasemag(V_s_c_llkv))
printf("\nVoltage regulation = %.2f percent", reg_c)
printf("\nTransmission efficiency, η = %.1f percent", n_c)
printf("\nA = D = %.3f∠%.2f° ", abs(A_c),phasemag(A_c))
printf("\nB = %.1f∠%.1f° ohm", abs(B_c),phasemag(B_c))
printf("\nC = %.2e∠%.1f° mho", abs(C_c),phasemag(C_c))
printf("\n\tALTERNATIVE SOLUTION:")
printf("\n\tSending end voltage, V_s = %.1f∠%.1f° kV (line-to-line)", abs(V_s_ca_llkv),phasemag(V_s_ca_llkv))
printf("\n\tVoltage regulation = %.2f percent", reg_ca)
printf("\n\tTransmission efficiency, η = %.1f percent", n_ca)
printf("\n\tA = D = %.3f∠%.2f° ", abs(A_c),phasemag(A_c))
printf("\n\tB = %.1f∠%.1f° ohm", abs(B_c),phasemag(B_c))
printf("\n\tC = %.2e∠%.f° S \n", abs(C_c),phasemag(C_c))
printf("\nCase(d): Long Line Rigorous Solution")
printf("\n Case(i): Using Convergent Series (Real Angles) Method")
printf("\n Sending end voltage, V_s = %.f∠%.1f° kV (line-to-line)", abs(V_s_d1_llkv),phasemag(V_s_d1_llkv))
printf("\n Voltage regulation = %.2f percent", reg_d1)
printf("\n Transmission efficiency, η = %.1f percent", n_d1)
printf("\n A = D = %.3f∠%.2f° ", abs(A_d1),phasemag(A_d1))
printf("\n B = %.f∠%.1f° ohm", abs(B_d1),phasemag(B_d1))
printf("\n C = %.2e∠%.1f° mho \n", abs(C_d1),phasemag(C_d1))
printf("\n Case(ii): Using Convergent Series (Complex Angles) Method")
printf("\n Sending end voltage, V_s = %.f∠%.1f° kV (line-to-line)", abs(V_s_d2_llkv),phasemag(V_s_d2_llkv))
printf("\n Voltage regulation = %.2f percent", reg_d2)
printf("\n Transmission efficiency, η = %.1f percent", n_d2)
printf("\n A = D = %.3f∠%.2f° ", abs(A_d2),phasemag(A_d2))
printf("\n B = %.1f∠%.1f° ohm", abs(B_d2),phasemag(B_d2))
printf("\n C = %.2e∠%.1f° mho \n", abs(C_d2),phasemag(C_d2))
printf("\nNOTE: Changes in obtained answer from that of textbook is due to more precision")
