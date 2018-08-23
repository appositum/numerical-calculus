//questao 4: ME
clc
//matriz das funções
function y=F(x)
f1 =  x(1).^(2) + x(2).^(2)+ x(3).^(2)-9
f2 = x(1).*x(2).*x(3)-1
f3=x(1)+x(2)- x(3).^(2)
y = [f1;f2;f3]
endfunction
//matriz Jacobiana
function y=J(x) 
    J11=2*x(1)
    J12=2.*x(2)
    J13=2.*x(3)
    J21=x(2).*x(3)
    J22=x(1).*x(3)
    J23=x(1).*x(2)
    J31=1
    J32=1
    J33= -2.*x(3)
    y=[J11,J12,J13;J21,J22,J23;J31,J32,J33]
endfunction
//aplicando o método de newton
//aproximação inicial X0
X0=[1;1;1]
//precisão
eps1=0.00001
//aplicação do método
R = naolinear(F,J,X0,eps1)
printf("Aproximação Obtida:") 
w=R(:,$)
disp(w)
printf("\n\n")
//verificando a aproximação
b=F(w)
printf("Aplicando F na aproximação obtida F(w):")
disp(b)

