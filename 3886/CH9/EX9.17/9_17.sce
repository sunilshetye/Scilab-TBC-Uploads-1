//moment of inertia
//refer fig.9.42
sumAiyi=(600*15)*((600/2)+20)+140*10*2*(70+30)+150*10*2*(5+20)+400*20*10  //mm^3
A=600*15+140*10*2+150*10*2+400*20  //mm^2
ybar=sumAiyi/A  //mm
Ixx=((15*(600^3))/(12))+(600*15*((145.39-320)^2))+((10*2*(140^3))/(12))+(1400*2*((145.39-100)^2))+((150*2*(10^3))/(12))+(1500*2*((145.39-15)^2))+((400*(20^3))/(12))+(400*20*((145.39-10)^2))
printf("Ixx=%.2f mm^4",Ixx)
//The answer provided in the textbook is wrong
 
