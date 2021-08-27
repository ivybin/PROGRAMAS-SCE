clear;
clc;
function BINAR16_8()
DF=zeros(1,7);
DFF=zeros(1,7);

CVR=input('DE BINARIO PARA=');
CHAVESDEU=0;
switch CVR
    case 8
    CHAVESDEU=8;
    case 16
    CHAVESDEU=16;
end
mprintf('\n\n-----------*I N S T R U C O E S*---------------------------\n\n-->DIGITE O NUMERO, DO CONJUNTO MENOS SIGNIFICATIVO PARA O MAIS SIGNIFICATIVO\n\n\n-->PARA FINALIZAR O NUMERO DIGITE:79\n\n\n-->DIGITE DE 4 EM 4 PARA HEXADECIMAL E DE 3 EM 3 PARA OCTAL\n-----------------------------------------------------------\n\n');

for i3=8:-1:1
    if i3==8
    DF(i3)=input('DIGITE A PARTE FRACIONARIA=');
    else
    DF(i3)=input('=');
    end

    if DF(i3)==79
        DF(i3)=0;
        break;
    end
end

for hu=1:1:8
   switch CHAVESDEU
    case 8
    switch DF(hu)
    case 000
     DFF(hu)=0;
    case 001
     DFF(hu)=1;
    case 010
     DFF(hu)=2;
    case 011
     DFF(hu)=3;
    case 100
     DFF(hu)=4;
    case 101
     DFF(hu)=5;
    case 110
     DFF(hu)=6;
    case 111
     DFF(hu)=7;
    otherwise
     break;
    end
    case 16 
    switch DF(hu)
    case 0000
     DFF(hu)=0;
    case 0001
     DFF(hu)=1;
    case 0010
     DFF(hu)=2;
    case 0011
     DFF(hu)=3;
    case 0100
     DFF(hu)=4;
    case 0101
     DFF(hu)=5;
    case 0110
     DFF(hu)=6;
    case 0111
     DFF(hu)=7;
     case 1000
     DFF(hu)=8;
    case 1001
     DFF(hu)=9;
    case 1010
     DFF(hu)=10;
    case 1011
     DFF(hu)=11;
    case 1100
     DFF(hu)=12;
    case 1101
     DFF(hu)=13;
    case 1110
     DFF(hu)=14;
    case 1111
     DFF(hu)=15;
    otherwise
     break;
    end
  end 
end

if CHAVESDEU==16 
   mprintf('A-10\nB-11\nC-12\nD-13\nE-14\nF-15'); 
end

disp(DFF);
endfunction
function DECIPARA(X2,X12,M)
CHAVEGB=0;
if  M==16
    CHAVEGB=1;
end
     
CHAVE2=0;


RESDIV=zeros(1,26);
RESY=zeros(1,9);

if X12(1,1)>0
    CHAVE2=1;
end

iu=0;
ii=0;
while iu>=0
iu=iu+1;
  if X2(iu)<M
    RESDIV(iu)= modulo(X2(iu),M);
    break;
  end
RESDIV(iu)= modulo(X2(iu),M);
X2(iu+1)= (X2(iu)-RESDIV(iu))/M;
  
end
if CHAVE2==1 
    while ii<10
    ii=ii+1;
    TP=X12(ii)*M;
    X12(ii+1)=TP-(floor(TP));
    RESY(ii)=floor(TP);
    end
end
 
 mprintf('\n-----RESULTADO:\n');
 if CHAVEGB==1
 mprintf('A-10\nB-11\nC-12\nD-13\nE-14\nF-15');      
 end
 v=26:-1:1
 disp(floor(RESDIV(v)));
 
 disp(",");
 
 FF=1:1:9
 disp(RESY(FF));
endfunction
function PO=DEPARA10(DPARA10)

SMA=0;TT=0;SMA1=0;M1=0;

X=zeros(1,24);
X1=zeros(1,14);

disp("O NUMERO 54 SIGNIFICA ¨PONTO(.)¨");
disp("PRESSIONE 77 PARA FINALIZAR O NUMERO");

if DPARA10==16
  disp('A=10;B=11;C=12;D=13;E=14;F=15');
end

for i=1:1:24
    
    if i==1
    mprintf('\n  VALOR MENOS SIGNIFICATIVO:');
    end
    X(i)=input('=');
    if X(i)==54
    M1=1;
    X(i)=0;
    break;
    end
    if X(i)==77
    X(i)=0;
    break;
    end
    SMA=SMA+( X(i)*(DPARA10)^(i-1) );
end
if M1==1
    for i1=1:1:14
        X1(i1)=input('=');        
        if X1(i1)==77
        X1(i1)=0;
        break;
        end
        SMA1=SMA1+(X1(i1)*(DPARA10)^(-i1));
    end   
end
ST=SMA1+SMA;
mprintf('\n-----RESULTADO:\n');
disp(ST);
PO=ST;
endfunction

MENU=9;

while MENU~=0
mprintf('\n\n-----------M E N U-------------------\n\n1-CONVERSAO DE DECIMAL PARA OUTROS\n2-CONVERSAO DE OUTROS PARA DECIMAL\n3-CONVERSAO DE BINARIO PARA OCTAL OU HEXADECIMAL\n4-CONVERSAO DE OCTAL OU HEXADECIMAL PARA BINARIO\n5-CONVERSAO DE OCTAL PARA HEXADECIMAL\n6-CONVERSAO DE HEXADECIMAL PARA OCTAL\n0-PARA SAIR');
MENU=input('DIGITE A OPCAO=');
switch MENU 
   case 6
   X2236=DEPARA10(16);
   X3336=X2236-floor(X2236);
   disp(X3336);
   DECIPARA(X2236,X3336,8);    
   case 5
   X2234=DEPARA10(8);
   X3334=X2234-floor(X2234);
   disp(X3334);
   DECIPARA(X2234,X3334,16);  
   case 4   
   DPARA102=input('CONVETER DE='); 
   X223=DEPARA10(DPARA102);
   X333=X223-floor(X223);
   disp(X333);
   DECIPARA(X223,X333,2); 
   case 3
   BINAR16_8(); 
   case 2
   DPARA101=input('CONVETER DE='); 
   DEPARA10(DPARA101); 
   case 1
   Qv=input('COVERTER DE DECIMAL PARA='); 
   X22=zeros(1,26); 
   X122=zeros(1,26);
   X22(1,1)=input('COVERTER O NUMERO(PARTE INTEIRA)=');
   X122(1,1)=input('COVERTER O NUMERO(PARTE FRACIONARIA)=');   
   DECIPARA(X22,X122,Qv); 
   case 0
   break; 
 end  
end
