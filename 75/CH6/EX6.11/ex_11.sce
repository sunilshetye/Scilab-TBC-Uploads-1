//    PG (372)
exec('trapezoidal.sce');

deff('[y]=f(x,y)','y=-y^2')
[x,y] = trapezoidal(1,1,5,1,f)