clc
//////////////////////método da matriz inversa////////////////////////////////////
//matriz A dos coeficientes do sistema
A =[ 9,-3,1 ; 3,15,-3 ; 1, 1, -7 ]
//matriz b dos termos independentes
b =[ 11 ;-9 ; 5 ]
//APLICAÇÃO DO MÉTODO
if (det(A)== 0) then
   printf("det(A)=0, aplicar outro método.")
else
   X = inv(A)*b
   printf("Solução exata: \n")
   disp(X)
   // cálculo do resíduo
   r = A*X - b
   nr = sqrt(sum(r.^(2)))
   printf("Valor do Resíduo: %g",nr)
end
