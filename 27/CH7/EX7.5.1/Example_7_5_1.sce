mew=10;
function xd=linear751(t,x)
  F=(1/3)*(x(1)^3)-x(1);
    xd(1)=mew*(x(2)-F);
    xd(2)=-(1/mew)*x(1);
             //x(dot);   x(2) means y.
             //y(dot);   x(1) means x.; 
  endfunction
  bound=[-4,-4,4,4];        //Bounds of x-axis and y-axis as [xmin ymin xmax ymax], change them according to your needs.
  nrect=12;     //increase it to get more number of curves, i.e. more information will be available.
  set(gca(),"auto_clear","off")        //hold on
  x=linspace(bound(1),bound(3),nrect);
  y=linspace(bound(2),bound(4),nrect);
  x0=[];
 
 for i=1:12
     x0=[x(i);y(i)];
     t0=0;
     t=0:0.01:3000;
     xout=ode(x0,t0,t,linear751);
     plot2d(xout(1,:),xout(2,:));
 end
  xtitle('Phase Portrait','x-axis ( x )','y-axis ( y )')