s=%s; 
num=1; 
den=s*(s+2)*(s+4); 
t=syslin('c',num/den); 
clf; 
evans(t); 
mtlb_axis([-5 5 -5 5]);
