r1=1.2;
v=1;
disp("Part a");
i1=v/r1;
disp("the actual current (in mA) in the cicuit is"); disp(i1);
disp("Part b");
r2=1;
i2=v/(r1+r2);
disp("the inication of the meter (in mA) is"); disp(i2);
disp("Part c");
r3=0.1;
i3=v/(r1+r3);
disp("the indication of the meter (in mA) is"); disp(i3);
disp("It is evident that the higher range (10 mA) with its much lower resistance (100 Ω) has reduced loading error compaared with the 1 kΩ , 1 mA range meter . However , the 0.77 mA will cause such a mall deflection on the 10 mA range that it will be difficult to read accurately.");
disp("FSD error = 0.3 mA");
disp("thus the 10 mA ammeter could indicate anything between 0.47 mA to 1.07 mA . On the 1 mA range");
disp("FSD error =0.03 mA");
disp("Thus the 1 mA ammeter could indicate anything between 0.42 mA to 0.48 mA . The range of values on the 10 mA scale includes the valuesof 0.77 mA and 0.83 mA whereas the 1 mA scale could never read higher than 0.48 mA . Put another way ,on the 10 mA range the readings could be from 43 % low to29 % high compared with the true value of 0.83 mA . On the 1 mA range , the readings could be from 42 %low to 49 % low compared with the true value of 0.83 mA");