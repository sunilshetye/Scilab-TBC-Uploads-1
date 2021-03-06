//All the quantities are expressed in SI units

M_inf = 2;                     //freestream mach number
p_inf = 2.65e4;                //freestream pressure
T_inf = 223.3;                 //freestream temperature

//from Appendix A, for M = 2
p0_inf = 7.824*p_inf;          //freestream total pressure
T0_inf = 1.8*T_inf;            //freestream total temperature

//from Appendix B, for M = 2
p0_1 = 0.7209*p0_inf;          //total pressure downstream of the shock
T0_1 = T0_inf;                 //total temperature accross the shock is conserved

//since the flow downstream of the shock is isentropic
p0_2 = p0_1;
T0_2 = T0_1;

//from Appendix A, for M = 0.2 at point 2
p2 = p0_2/1.028;
T2 = T0_2/1.008;

p2_atm = p2/102000;

printf("\nRESULTS\n---------\nThe pressure at point 2 is:\n        p2 = %1.2f atm\n",p2_atm)