//Solved Example 8:
//Checking for the equality of 2 rational numbers by reducing them
function[]=equal(x1,x2,x3,x4)
  rational1=struct('numerator',x1,'denominator',x2)
 rational2=struct('numerator',x3,'denominator',x4)
 y=0
if(rational1.numerator>rational1.denominator)
  a=rational1.numerator;
  b=rational1.denominator;
else
  a=rational1.denominator;
  b=rational1.numerator;
end
while(b~=0)
  rem=modulo(a,b);
  a=b;
  b=rem;
end
y=struct('numerator',x1/a,'denominator',x2/a);
y1=0
if(rational2.numerator>rational2.denominator)
  a=rational2.numerator;
  b=rational2.denominator;
else
  a=rational2.denominator;
  b=rational2.numerator;
end
while(b~=0)
  rem=modulo(a,b);
  a=b;
  b=rem;
end
y1=struct('numerator',x3/a,'denominator',x4/a);
if(y==y1)
  disp("Equal")
  break;
else
  disp("Not Equal")
  break;
end
endfunction
x1=5;
x2=7;
x3=35;
x4=49;
equal(x1,x2,x3,x4);