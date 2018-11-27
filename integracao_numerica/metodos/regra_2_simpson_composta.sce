//REGRA DE 3/8 SIMPSON COMPOSTA PARA INTEGRAÇÃO NUMÉRICA

// f: função que será integrada;
// [a, b] intervalo de integração
// m número de divisões do intervalo [a,b]
// -->neste caso m deve ser múltiplo de 3

function y=simpson2composta(f,a,b,m)

if (modulo(m,3) <>0)  then
    
    printf('\n \n')
    printf('\n \n')
    error('O NÚMERO N  DE SUBINTERVALOS DEVE SER MÚLTIPLO DE 3  !!!!')
    printf('\n \n')
    printf('\n \n')
end

 h=(b-a)./m;
  for i=1:(m+1)
     x(i) = a + (i-1).* h 
  end

soma=0;
for i=1: 3:(m-2)
    soma = soma + (3.*h ./8).*(f(x(i)) + 3.*f(x(i+1)) + 3.*f(x(i+2)) + f(x(i+3))      )   
end

//printf("\n \n");
//printf("         Regra 3/8 de Simpson Composta ");
//printf("\n \n"); 
  
  y=soma

  
endfunction

