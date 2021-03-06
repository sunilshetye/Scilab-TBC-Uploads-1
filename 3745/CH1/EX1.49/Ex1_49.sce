// Ex 49 Page 394

clc;clear;close;
// Given
u=30;//degree 
m=3;//no of phases

//Id=sqrt(2)*Vs*X*(1-cosd(u))*sin(%pi/m)
IdBYVs_dash=m/2/%pi*(1-cosd(u))*sin(%pi/m)*sqrt(2);//load current/Vs
//where IdBYVs_dash = m/%pi*IdX/2
EdoBYVs=sqrt(2)*m/%pi*sin(%pi/m);//dc output voltage/Vs with no overlap
EduBYVs=EdoBYVs-IdBYVs_dash;//dc output voltage/Vs with overlap
//part (a)
Reg1=(EdoBYVs-EduBYVs)/EdoBYVs*100;//% (regulation)
printf("Regulation at no load voltage = %.1f percent",Reg1)
//part (b)
Reg2=(EdoBYVs-EduBYVs)/EduBYVs*100;//% (regulation)
printf("\n Regulation at full load voltage = %.1f percent",Reg2)
