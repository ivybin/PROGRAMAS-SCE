clear;
clc;

function K=VM(n)
    s=0;
    B=length(n);
    for i=1:1:B
       s=s+n(1,i);
    end
    K= s/B;   
endfunction

function Ka=VAR(na)
    som=0;
    Ba=length(na);
    MD=VM(na);
    for ia=1:1:Ba
        som=som+((na(1,ia)-MD)^2/(Ba-1));
    end
    Ka=som;
    disp('A VARIANCIA E:',Ka);
endfunction

function Kd=dp(nd)
    sd=0;
    Bd=length(nd);
    MDd=VM(nd);
    for id=1:1:Bd
        sd=sd+sqrt((nd(1,id)-MDd)^2/(Bd-1));
    end
    Kd=sd;
    disp('O DESVIO PADRAO E:',Kd);
endfunction

V=[0,1,2,3,4,5,6,7,8];
C=dp(V);
MKA=VAR(V);







