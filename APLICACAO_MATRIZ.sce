/*código que gere três matrizes aleatórias - A, B e C 
de dimensão 11x11
E compute os seguintes valores:

a) O somatório dos elementos da diagonal principal.
b) O somatório dos elementos das colunas pares.
c) O somatório dos elementos das colunas ímpares.
d) O logaritmo natural dos resultados dos items a), b) e c).*/
clear;
clc;

A= 10*rand(11,11);
B= 10*rand(11,11);
C= 10*rand(11,11);

M=0;U=0;U2=0;
for i=1:1:11
    M=M+A(i,i)+B(i,i)+C(i,i);  
end
disp(M);

//B)
for T=2:2:10
 for K=1:1:11            
    U=U+A(K,T)+B(K,T)+C(K,T);  
 end
end
disp(U);

//C)
for T2=1:2:11
 for K2=1:1:11            
    U2=U2+A(K2,T2)+B(K2,T2)+C(K2,T2);  
 end
end
disp(U2);
//D)
DT= [log(M);log(U);log(U2)];
disp("OS LOGARITMOS NATURAIS DOS ITENS A B E C SE APRESENTAM DE FORMA RESPECTIVA",DT);


