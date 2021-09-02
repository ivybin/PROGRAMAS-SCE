clear;
clc;
close;

function [tca,tcl]= prepara_arq()
acha_arq= uigetfile("*.csv",pwd(),"ESCOLHA O ARQUIVO");  //achar arquivo

ler_arq_matriz= csvRead(acha_arq); //ler arquivo como matriz

[linha_arq,coluna_arq]=size(ler_arq_matriz);  //recebe o número de linhas e colunas do arquivo

                 tca=ler_arq_matriz; tcl=linha_arq;   //recebe a matriz e a linha para h           
endfunction
//usar a função que retorna a matriz e a quntidade de linhas

[dados,h]= prepara_arq();

//separar x e y em 2 matrizes de uma coluna

X= dados(:,1);  y= dados(:,2);

som1=0;som2=0;som3=0;som4=0;
//SOMATÓRIO
for i=1:1:h
    som1= som1+X(i,1)*y(i,1); 
    som2= som2+X(i,1);
    som3= som3+y(i,1);
    som4= som4+(X(i,1)*X(i,1)); 
end
//coef angular
Ac=(som1-(1/h)*som2*som3)/(som4-(1/h)*som2*som2);
//coef linear
Al= (som3/h)-(Ac*som2/h);
//DECLARAR Y2
y2= zeros(h,1);
//servirá pra traçar a reta
for i2=1:1:h
    y2(i2)=Ac*X(i2)+Al;
end
//EQUAÇÃO DA RELA LINEAR
printf("\n\n\n   EQUAÇÃO DA RETA LINEAR: \n");
printf("\n   f(x)= %ix + %i",Ac,Al);
//Plotagem e detalhes
plot(X,y,'r+',X,y2);
xtitle('GRÁFICO DA COTAÇÃO');
legend('Pontos-cotação','Reta linear que representa o conjunto de pontos');
xlabel('METRAGEM');
ylabel('VALOR COTADO');

















