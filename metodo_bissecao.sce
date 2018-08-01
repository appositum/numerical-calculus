// CALCULA UMA APROXIMACAO x(k), PARA UMA RAIZ DE f NO INTERVALO [a,b]
// f: função criada em outro arquivo
// [a,b]: intervalo no qual f(a)*f(b) < 0
// eps1: precisão utilizada no critério de parada

function bissecao(f,a,b,eps1)

if ((f(a).*f(b))>0.0) then
  printf("\n \n")
  printf("f( %g )*f( %g )>0 \n \n",a,b)
  printf("O MÉTODO NÃO CONVERGE \n \n")
else
  
  k=1;
  x(k)=(a+b)./2;

  while (abs(f(x(k)))>eps1) do
     
     if (f(a).*f(x(k)) < 0) then 
        b=x(k)
     else 
        a=x(k)
     end
     x(k+1)=(a+b)./2
     k=k+1
               
  end  
  for i=1:k
     printf("k= %g      x(%g)=%g       |f(x(%g))|=%g \n",i,i,x(i),i,  abs(f(x(i)))   ); 
  end

end
endfunction
