clear;
clc;
S=0;
Z=-1;
i=0;
while i<1000
    S=S+(Z^i);
    i=i+1;   
end
disp(S); 
 

