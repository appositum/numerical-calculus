//REGRA DO TRAPÉZIO COMPOSTA
// f : função que está no integrando
// [a, b] : intervalo de integração
// m: número de subintervalos utilizados
clc
 function y=trapeziocomposta(f,a,b,m)
    h=(b-a)./ m
// construção dos pontos de interpolação
for i=1:(m+1)
        x(i) = a + (i-1).* h 
end
soma=0;
for i=1:m
    soma = soma + (h ./2).*(f(x(i)) + f(x(i+1))) 
end

//printf("\n ");
//("        Aproximação do valor da integral: Regra do Trapézio Composta ");
//printf("\n "); 

y = soma 

endfunction
