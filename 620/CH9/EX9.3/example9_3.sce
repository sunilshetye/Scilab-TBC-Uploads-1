vnl=1.2;
vfl=1.1;
disp("Part a");
p_v=(vnl-vfl)*100/vfl;
disp("the percentage voltage regulation of the cell (in %) is"); disp(p_v);
disp("Part b");
p_v1=40;
vnl1=21;
vfl1=vnl1/(1+p_v1/100);
disp("the full-load voltage (in V) is"); disp(vfl1);