                   //EXAMPLE 3-6     PG NO-175
Vac=100+%i*0;
Vcb=-50-%i*86.6;
Vba=-50+%i*86.6;
Zac=6+%i*8;
Rcb=20+%i*0;
Zba=4-%i*3;
Zcb=20+%i*0;
Iac=Vac/Zac;
disp('i) CURRENT  (Iac) is  in rectangular form  =  '+string (Iac) +' A ');
Icb=Vcb/Zcb;
disp('i) CURRENT  (Icb) is  in  rectangular form  =  '+string (Icb) +' A ');
Iba=Vba/Zba;
disp('i) CURRENT  (IbA) is  in rectangular form  =  '+string (Iba) +' A ');
Ia=Iac-Iba;
disp('i) CURRENT  (Ia) is  in rectangular form  =  '+string (Ia) +' A ');
Ic=Icb-Iac;
disp('i) CURRENT  (Ic) is  in rectangular form  =  '+string (Ic) +' A ');
Ib=Iba-Icb;
disp('i) CURRENT  (Ib) is  in  rectangular form  =  '+string (Ib) +' A ');
Pac=Vac*Iac*0.6;
disp('iv)  Power (Pac) is  in  rectangular form   =  '+string (Pac) +'  W ');
Pcb=Vcb*Icb;
disp('iv)  Power (Pcb) is in   rectangular form    =  '+string (Pcb) +'  W ');
Pba=Vba*Iba*0.8;
disp('iv)  Power (Pba) is  in rectangular form  =  '+string (Pba) +'  W ');
Qac=100*20*0.8;
disp('iv) Reactive Power (Qac) is in rectangular form   =  '+string (Qac) +'  vars ');
Qba=100*20*-0.6
disp('iv) Reactive Power (Qba) is   in rectangular form =  '+string (Qba) +'  vars ');
P=600+500+1600;
disp('iv)  Power (P) is    =  '+string (P) +'  W ');
Q=800-1200;
disp('iv)  Power (Q) is    =  '+string (Q) +'  vars ');

