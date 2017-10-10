//Chapter 04:Number Theory and Cryptography

clc;
clear all;

function primefactors(n)
    while modulo(n,2) == 0 //To print all the 2s that divide input
        disp('2')
        n=n/2
    end
    for i=3:2:sqrt(n)//increment by 2 so as to obtain odd numbers only
        while modulo(n,i)==0
            disp(i)
            n=n/i
        end
    end
if(n>2) then //to check for prime number
    disp(n)
    end
endfunction

n1=100 
n2=641 
n3=999 
n4=1024
mprintf("Prime factors of %d are:",n1)
disp(primefactors(n1))
mprintf("\nPrime factors of %d are:",n2)
disp(primefactors(n2))
mprintf("\nPrime factors of %d are:",n3)
disp(primefactors(n3))
mprintf("\nPrime factors of %d are:",n4)
disp(primefactors(n4))

