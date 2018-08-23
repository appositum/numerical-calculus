//matriz das funções
function y=F(t)
f1 =  t(1).^(4) + 0.06823.*t(1)-t(2).^(4)-0.05848.*t(2)-0.015
f2 = t(1).^(4) +0.05848.*t(1)-2.*t(2).^(4) -0.11696.*t(2) 
y = [f1;f2]
endfunction
//matriz Jacobiana
function y=J(t) 
    J11=4.*t(1).^(3)+0.06823
    J12=-4.*t(2).^(3)-0.05848
    J21=4.*t(1).^(3)+0.05848
    J22=-8.*t(2).^(3)-0.11696
    y=[J11,J12;J21,J22]
endfunction
//aplicando o método de newton
//aproximação inicial X0
X0=[0.30;0.30]
//precisão
eps1=0.0001
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
