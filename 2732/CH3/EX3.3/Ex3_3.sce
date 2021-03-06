clc
// initialization of variables
clear
epsillon=[0.01 0 0
     0 0.02 0.02
     0 0.02 0.01] // dimensionless
theta=30 // degrees
//calculations
theta=theta*%pi/180
a=[cos(theta) sin(theta) 0
  -sin(theta) cos(theta) 0
   0 0 1]
b=a.'
epsillon_new=a*epsillon*b
// calculation of strain invariants
// for epsillon
J1=epsillon(1,1)+epsillon(2,2)+epsillon(3,3)
J2=epsillon(1,1)*epsillon(2,2)+epsillon(2,2)*epsillon(3,3)+epsillon(3,3)*epsillon(1,1)-2*(epsillon(1,2)^2+epsillon(2,3)^2+epsillon(3,1)^2)
J3=epsillon(1,1)*epsillon(2,2)*epsillon(3,3)+2*epsillon(1,2)*epsillon(2,3)*epsillon(3,1)-(epsillon(1,1)*epsillon(2,3)^2+epsillon(2,2)*epsillon(3,1)^2+epsillon(3,3)*epsillon(1,2)^2)

// for epsillon_new
J11=epsillon_new(1,1)+epsillon_new(2,2)+epsillon_new(3,3)
J22=epsillon_new(1,1)*epsillon_new(2,2)+epsillon_new(2,2)*epsillon_new(3,3)+epsillon_new(3,3)*epsillon_new(1,1)-2*(epsillon_new(1,2)^2+epsillon_new(2,3)^2+epsillon_new(3,1)^2)
J33=epsillon_new(1,1)*epsillon_new(2,2)*epsillon_new(3,3)+2*epsillon_new(1,2)*epsillon_new(2,3)*epsillon_new(3,1)-(epsillon_new(1,1)*epsillon_new(2,3)^2+epsillon_new(2,2)*epsillon_new(3,1)^2+epsillon_new(3,3)*epsillon_new(1,2)^2)

// results
printf('The new strain tensor is');
disp(epsillon_new);
printf('The strain invariants of old strain tensor are J1=%0.2f J2=%.e J3=%.e \n and that of the new strain tensor are J1=%0.2f J2=%.e J3=%.e',J1,J2,J3,J11,J22,J33)
printf('\n Hence the same strain invariants')


