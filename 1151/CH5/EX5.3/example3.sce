s=%s; 
num=1; 
den=s*(s^2+4*s+8); 
t=syslin('c',num/den); 
clf; 
evans(t); 
mtlb_axis([-5 5 -5 5]);
