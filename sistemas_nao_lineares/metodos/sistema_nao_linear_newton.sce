clc
//RESOLUÇÃO NUMÉRICA DE UM SISTEMA NÃO LINEAR

/////////////////////////////////////////////////////////////////////////
//     MÉTODO DE NEWTON - RAPHSON    //
////////////////////////////////////////////////////////////////////////

// n: dimensão do sistema
//F: vetor das funções a serem igualadas a zero (f1, f2, f3,...,fn)
//J: Matriz Jacobiana
//X0: Aproximação inicial para a solução exata
// eps1: precisão a ser utilizada

function w = naolinear(F, J, X0, eps1)  

n=length(F(X0))
max_iter = 200;
teste=10.0;
iter=1;

// salvando X0 na coluna 1 da matriz M
for i=1:n
    M(i,1)=X0(i)
end


while((teste>eps1) | iter>=max_iter ) do

   VF = F(X0)
   MJ=J(X0)
   S=MJ \ (- VF)
   X1 = S + X0

   for i=1:n
     M(i,iter+1)=X1(i)
   end

   d = X1 - X0
   teste=sqrt(  sum(d.^(2)) )
   iter = iter +1

   X0=X1

end

   printf("\n")
   printf("   NEWTON - RAPHSON    \n")
   printf("SISTEMAS NÃO LINEARES  ")
   printf("\n \n \n")
   printf("k= %g  iteracoes \n \n", iter)
   
w = M
    
endfunction
