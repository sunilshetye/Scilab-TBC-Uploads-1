exec('2_6data.sci')
function[ftPerSecond]=conversion(MilePerHour)
    ftPerSecond=(5280*MilePerHour)/3600;
endfunction
function[meterPerSecond]=conversion1(MilePerHour)
    meterPerSecond=(1609.344*MilePerHour)/3600;
endfunction
disp("1 ftPerSecond=(5280*MilePerHour)/3600")

disp(conversion(60),"velocity in terms of ft/s");

disp("1 meterPerSecond=(1609.344*MilePerHour)/3600")
disp(conversion1(60),"velocity in terms of m/s");