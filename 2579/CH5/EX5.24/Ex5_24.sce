//Ex:5.24
clc;
clear;
close;
R=6370;// radius of earth in km
hm=400;// height of the ionospheric layer in km
d=2*R*(acos(R/(R+hm)));// max range in a single hop transmission in km
printf("The max range in a single hop transmission = %f km", d);