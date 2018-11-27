//REGRA DE 1/3 SIMPSON COMPOSTA PARA INTEGRAÇÃO NUMÉRICA

// f: função que será integrada;
// [a, b] intervalo de integração
// m número de divisões do intervalo [a,b]
//---> neste caso, m deve ser par <---
clc
function y=simpson1composta(f,a,b,m)

if (modulo(m,2) <>0)  then
    
    printf("\n \n");
    error('O número n de subintervalos deve ser par');
    printf("\n \n");

end

  h=(b-a)./m;
  for i=1:(m+1)
     x(i) = a + (i-1).* h 
  end
  
  
soma=0;
for i=1: 2:(m-1)
    soma = soma + (h ./3).*(f(x(i)) + 4.*f(x(i+1)) + f(x(i+2))       )   
end

  
//printf("\n \n");
//printf("         Regra 1/3 de Simpson Composta ");
//printf("\n \n"); 
  
  y=soma
  
endfunction

