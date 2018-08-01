//CALCULA UMA APROXIMACAO x(k), PARA UMA RAIZ DE f NO INTERVALO [a,b]
// f: função criada em arquivo
// df: derivada da função f que está no arquivo 
//x0: aproximação inicial que pertence ao intervalo [a,b] que contém uma raiz
// eps1: precisão dada

///////////////////////////////////////////////////////////////////////////////////////////////
//////////////////     MÉTODO DE NEWTON        /////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////

function newton(f,df,x0,eps1),  
  
  k=1;
  x(k)=x0 - (f(x0)./df(x0));
  while (abs(f(x(k)))>eps1) do
   
   x(k+1)= x(k) - (f(x(k))/df(x(k)));
   k=k+1;
       
  end
  printf("\n \n");
  printf("        MÉTODO DE NEWTON     ");
  printf("\n \n");  
  for i=1:k
    printf("k= %g      x(%g)=%g       |f(x(%g))|=%g \n",i,i,x(i),i,  abs(f(x(i)))   ); 
  end
endfunction
