clc
clear
clf
n1=-2:1:2;
x1=-2:1:2;
subplot(3,1,1)
plot(n1,x1,".");
xtitle("x1(n)","n","x1(n)");
xgrid(5)
n=-20:1:20;
for i=1:length(n)
   x2(i)=n(i);
   x3(i)=2-n(i);
end
subplot(3,1,2);
plot(n,x2,".");
xtitle("x2(n)","n","x2(n)");
xgrid(5);
subplot(3,1,3);
plot(n,x3,".");
xtitle("x3(n)","n","x3(n)");
xgrid(5);
