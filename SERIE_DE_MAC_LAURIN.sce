clear;
clc;
TY=1;seno=0;coss=0;
ANG=input('ANGULO EM RADIANO=');
function X=FAT(N)
   if N==0
   X=1;
   else        
   X=N*FAT(N-1);
   end
endfunction

for T=0:1:100
    TY=TY+3;
    seno=seno+((-1)^TY*((ANG^((T*2)+1))/FAT((T*2)+1)));
    coss=coss+((-1)^TY*((ANG^(T*2)/FAT(T*2))));    
end

MZ= %e^(%i*ANG);
SP= cos(ANG)+%i*sin(ANG);
GG=[SP MZ];
disp(GG);

disp(seno);
disp(sin(ANG));
disp(coss);
disp(cos(ANG));

//14)
n=13;
M= (cos(ANG)+%i*sin(ANG))^n;
C= (cos(ANG*n)+%i*sin(ANG*n));
RED=[M C];
disp(RED);

