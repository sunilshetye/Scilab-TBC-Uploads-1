//Example 1.19
//Addition
//Page no. 15
clc;close;clear;

function [x1]=add(x,y)                  //function for addition of binaries
    c=0;
    printf('Addition of %.4i and %.4i= ',x,y)
    for i=1:5
        x1(1,i)=0
    end
    for i=5:-1:1
        x=x/10;
        xd=x-fix(x)
        x=x-xd;
        y=y/10;
        yd=y-fix(y)
        y=y-yd;
        if c==1 then
            if floor((xd*10)+0.1)==1 & floor((yd*10)+0.1)==1 then
                x1(1,i)=1;c=1;
            elseif floor((xd*10)+0.1)==0 & floor((yd*10)+0.1)==0
                x1(1,i)=1;c=0;
            else
                x1(1,i)=0;c=1;
            end
        else
            if floor((xd*10)+0.1)==1 & floor((yd*10)+0.1)==1 then
                x1(1,i)=0;c=1;
            elseif floor((xd*10)+0.1)==0 & floor((yd*10)+0.1)==0
                x1(1,i)=0;c=0;
            else
                x1(1,i)=1;c=0;
            end
        end
    end
    
    disp(x1)
endfunction

add(0010,0101);
add(11110,11011);
add(1000,0101);
add(00010,11011);
add(11110,00010);
add(11111,0000);