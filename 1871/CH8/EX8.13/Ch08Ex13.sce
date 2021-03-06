// Scilab code Ex8.13 : Pg:336(2008)
clc;clear;
function [bini]= decimal_binary(ni) // Function to convert decimal to binary
    bini = 0;
    i = 1;
    while (ni <> 0)
      rem = ni-fix(ni./2).*2; 
      ni = int(ni/2);
      bini = bini + rem*i;
      i = i * 10;
    end
endfunction   

function [deci]= binary_decimal(ni) // Function to convert binary to decimal
    deci = 0;
    i = 0;
    while (ni <> 0)
      rem = ni-fix(ni./10).*10; 
      ni = int(ni/10);
      deci = deci + rem*2.^i;
      i = i + 1;
    end
endfunction   

// Function to convert a vector with binary elements to a binary number
function vtob = vector_to_bin(vector)   
    cnt = 1; vtob = 0;
for i = 1:1:length(vector)
    vtob = vtob + vector(i)*cnt;
    cnt = cnt*10;
end                  
endfunction

function bin_cmp = ones_cmp(bin)       // Function to perform ones complement
    binc = zeros(4);
    i = 1;
    while(i <= 4)
        rem = bin-fix(bin./10).*10; 
        if rem == 1 then
            rem = 0;
        else
           rem = 1;      
        end
         bin = int(bin/10);
         binc(i)=rem;
         i = i+1;
    end 
bin_cmp = vector_to_bin(binc);
endfunction

function bcmp_plus_one = twos_cmp(bin)       // Function to perform twos complement
    binc = zeros(4);
    i = 1;
    while(i <= 4)
        rem = bin-fix(bin./10).*10; 
        if rem == 1 then
            rem = 0;
        else
           rem = 1;      
        end
         bin = int(bin/10);
         binc(i)=rem;
         i = i+1;
    end 
bcmp_plus_one = vector_to_bin(binc);
    bcmp_plus_one = binary_decimal(bcmp_plus_one)+1;
endfunction

function fr = check_result(res)     // Function to check the occurence of end-around carry
    max_result = 11111;
    if binary_decimal(res) < binary_decimal(max_result) then
        fr = ones_cmp(res-1);
    else
        fr = res;
    end
endfunction

sub = 1010;    // Initialize the first binary number
men = 1101;    // Initialize the second binary number
result = decimal_binary(binary_decimal(sub)+binary_decimal(twos_cmp(men)));
final_result = check_result(result);
printf("%4d - %4d = -00%2d", sub, men, final_result);

// Result
//  1010 - 1101 = -0011 
