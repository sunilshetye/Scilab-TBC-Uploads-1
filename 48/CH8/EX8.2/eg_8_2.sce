clc;
clear;
disp("To prove whether there possibiliy of identifing the fault by sensitising just a single path");
disp("Let us sensitize the path G3 G6 G9");
disp("This requires G6=1 , G10=0 , G11=0 ,G8=0 ");
disp("Which inturn requires x2=0 and x3=0 (since G6=1)");
disp("G10=0 impiles that x4=1 regardless of whether there is a fault or not");
disp("G11=0 implies G7=1(since x3=0) which in turn implies x4=0");
disp("Evidently to satisfy both G10=0 and G11=0 we must set conflicting requirements on x4 and thus have a contradiction");
disp("By symmetry of the circuit it is obvious that an attempt to sensitize the path through G10 will also fail");
disp("Hence the method of one dimensional path sensitizing fails to generate the test inputs to detect the fault");
