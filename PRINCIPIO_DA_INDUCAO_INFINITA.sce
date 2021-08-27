clear;
clc;
k=7;
P=0;

for i=1:1:k
    P=P+(i^2);
    M=(i/6)*(1+i)*((2*i)+1);    
    C=[P M];
    disp(C);
end


