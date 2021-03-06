sx = 15000; // Direct stress in x-direction in psi
sy = 5000; // Direct stress in y-direction ""
txy = 4000 ; // Shear stress in y-direction ""
savg = (sx+sy)/2 ; // Average in-plane direct stress
sx1 = 15000; tx1y1 = 4000; // Stress acting on face at theta = 0 degree
sx1_ = 5000; tx1y1_ = -4000; // Stress acting on face at theta = 0 degree
R = sqrt(((sx-sy)/2)^2+(txy)^2) // Radius of mohr circle
// Part (a)
t = 40 ; // Inclination of the plane in degree
f1 = atand(4000/5000) ; // Angle between line CD and x1-axis
f2 = 80 - f1 ; // Angle between line CA and x1-axis
// Point D ; 
sx1 = savg + R*cosd(f2);  // Direct stress at point D 
tx1y1 = -R*sind(f2);   // shear stress at point D
disp("psi",sx1,"The direct stres at point D")
disp("psi",tx1y1,"The shear stress at point D")
// Point D' ; 
sx2 = savg - R*cosd(f2)  // Direct stress at point D' 
tx2y2 = R*sind(f2)   // shear stress at point D'
disp("psi",sx2,"The direct stres at point D_desh")
disp("psi",tx2y2,"The shear stress at point D_desh")
//Part (b)
sp1 = savg + R ; // Maximum direct stress in mohe circle (at point P1)
tp1 = f1/2 ; // Inclination of plane of maximum direct stress
disp("degree",tp1,"with angle","psi",sp1,"The maximum direct stress at P1 is ")
sp2 =  savg - R ; // Minimum direct stress in mohe circle (at point P2)
tp2 = (f1+180)/2 ; // Inclination of plane of minimum direct stress
disp("degree",tp2,"with angle","psi",sp2,"The maximum direct stress at P2 is ")
// Part (c)
tmax = R ;  // Maximum shear stress in mohe circle
ts1 = -(90 - f1)/2 // Inclination of plane of maximum shear stress
disp("degree",ts1,"with plane incilation of","psi",tmax,"The Maximum shear stress is ")




