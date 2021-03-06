//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 36

clc;
disp("CHAPTER 8");
disp("EXAMPLE 36");

//VARIABLE INITIALIZATION
v_t=250;                    //in Volts
I_l=150;                    //in Amperes
loss1=1200;                 //core loss at full load in Watts
loss2=800;                  //mechanical loss in Watts
r_b=0.08;                   //brush resistance in Ohms
r_sh=62.5;                  //shunt field resistance in Ohms
r_se=0.03;                  //series field resistance in Ohms
r_ip=0.02;                  //interpole resistance in Ohms

//SOLUTION

//solution (a)
p_o=v_t*I_l;
I_sh=v_t/r_sh;
I_a=I_l+I_sh;
r_tot=r_b+r_se+r_ip;
arm_loss=(I_a^2)*r_tot;      //armature circuit copper loss
cu_loss=v_t*I_sh;            //shunt field copper loss
c_loss=cu_loss+loss1+loss2;  //constant loss
disp(sprintf("(a) The constant loss is %f W",c_loss));

//solution (b)
tot_loss=arm_loss+c_loss;    //total loss
p_i=p_o+tot_loss;
eff=(p_o/p_i)*100;
disp(sprintf("(b) The full load efficiency is %f %%",eff));

//END 


