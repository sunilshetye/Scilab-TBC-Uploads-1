exec('2_5data.sci')
function[unit]=Conversion(SI)
     unit=(9.8*(0.3048)^2)*(SI)/4.448;
 endfunction
 disp("1lb/ft^2=(9.8*(0.3048)^2)*/4.448)kgf/m^2")
 disp(Conversion(280.8),"wing loading in lb/ft^2 for F-117A stealth fighter");