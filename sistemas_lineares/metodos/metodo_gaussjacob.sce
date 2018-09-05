// RESOLUÇÃO NUMÉRICA DE SISTEMAS LINEARES (AX=b)

// MÉTODO ITERATIVO DE GAUSS - JACOB

function w=gaussjacob(A,b,X0,eps1)
    
// A:  matriz dos coeficientes do sistema de equações lineares.
// b: vetor b dos termos independentes
// X0: vetor solucao inicial
//eps1: precisao utilizada no criterio de parada

// CALCULO DA ORDEM DO SISTEMA
[m,n]=size(A);

if (m~=n) then
    printf("\n \n");
    error(' A matriz do sistema deve ser quadrada ')
    printf("\n \n");
end

for i=1:n
  
   if (A(i,i)==0.0) then
     printf("\n \n");
     error(' Existe elemento na diagonal igual a zero ')
     printf("\n \n");
   end
  
end;

// VERIFICAÇÃO DO CRITÉRIO DAS LINHAS
AUX = A;
for i=1:n
   AUX(i,i)=0
end

// cálculo dos alphas...
for i=1:n
     den = sum( abs(AUX(i,:)) ) ;
     alpha(i)= den / abs( A(i,i) )
end

    if ( max(alpha) >= 1 ) then
        printf("Troque as linhas ");
        error('A matriz  não é diagonalmente dominante');
    end

// salvando X0 na coluna 1 da matriz de saída M
for i=1:m
    M(i,1)=X0(i)
end

// CONSTRUCAO DA EQUACAO ITERATIVA X=TX + C
// construcao da matriz coluna C
for i=1:n
  C(i)=b(i)/A(i,i);
end;

// construcao da matriz iterativa T
T=A;
for i=1:n
  T(i,i)=0;
end;

for i=1:n
    T(i,1:n)= T(i,1:n)/A(i,i);
end

iter=1;
teste=10.0;
Xv=X0;

while(teste>eps1 ) do

   Xn=C - T*Xv;
   for i=1:m
      M(i,iter+1)=Xn(i)
   end
 
 // critério de parada
   d = Xn - Xv;
   teste=sqrt(  sum(d.^(2)) );
   Xv=Xn;
   iter = iter +1;
      
end 
printf("\n \n");
printf("        MÉTODO DE GAUSS - JACOB     ");
printf("\n \n");
printf("Aproximação da solução exata após %g iterações: \n",iter -1 ); 

w=M

endfunction

