// CÓDIGO SCILAB DO MÉTODO DA SECANTE

//f :função criada em outro arquivo
//[a,b]: intervalo no qual f(a)f(b)<0
// eps1: precisão utilizada no critério de parada

function secante(f,a,b,eps1)

if ((f(a).*f(b))>0.0) then
  
      printf("\n \n")
      printf("f( %g )*f( %g )>0 \n \n",a,b)
      printf("O MÉTODO NÃO CONVERGE \n \n")
  
else
    
      x(1)=a;
      x(2)=b;
      k=2;
      divf= f(x(k)) - f(x(k-1));
      
      while (abs(f(x(k)))>eps1)  do
          
          if (abs(divf)<=0.00000000002)  then
         
              printf("\n \n")
              printf("divisão por zero \n \n")
              printf("O MÉTODO NÃO CONVERGE \n \n")
             x(k+1)=   ((x(k-1)*f(x(k))) - (x(k)*f(x(k-1))))  / (f(x(k)) - f(x(k-1)));

          else 
          
              x(k+1)=   ((x(k-1)*f(x(k))) - (x(k)*f(x(k-1))))  / (f(x(k)) - f(x(k-1)));
          
          end
      
      k=k+1;
       
      end
  
end


for i=1:k
    
    printf("k= %g      x(%g)=%15.7f       |f(x(%g))|=%15.7f \n",i,i,x(i),i,  abs(f(x(i)))   ); 
      
end

endfunction

