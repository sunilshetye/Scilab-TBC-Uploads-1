

//exapple 1.22.3
clc; funcprot(0);
// Initialization of Variable
GCT=18+40/60+12/3600;//greenwich civil time
longP=102+30/60;//longitude of the place
dot=longP/15;
LMT=GCT+dot;
disp("local mean time in past midnight:");
a=modulo(LMT*3600,60);
printf("seconds %.2f",a);
b=modulo(LMT*3600-a,3600)/60;
printf("  minutes %i",b);
c=(LMT*3600-b*60-a)/3600;
if c>24 then
    c=c-24;
end
printf("  hours %i",c);
disp("date is changed by a day");
disp("date at the place is 3th July")
