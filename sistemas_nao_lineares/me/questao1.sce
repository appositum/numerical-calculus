// Questão 1
// letra D

function y=F(x)
    f1 = x(1).^2 + x(1).*x(2) - 10
    f2 = (3.*x(1)).*(x(2).^2) + x(2) - 57
    y = [f1; f2]
endfunction

function y=J(x)
    j11 = 2.*x(1) + x(2)
    j12 = x(1)
    j21 = 3.*(x(2).^2)
    j22 = (3.*x(1)).*(2.*x(2)) + 1
    y = [j11, j12; j21, j22]
endfunction

R = naolinear(F, J, [1.98; 2.78], 0.0001)
disp(R)

printf("Aproximação obtida:")
w = R(:,$)
disp(w)
printf("\n\n")

printf("Aplicando F na aproximação obtida F(w)")
disp(F(w))

//   NEWTON - RAPHSON    
//SISTEMAS NÃO LINEARES  
// 
// 
//k= 4  iteracoes
//
//   1.98   1.9969635   1.999992    2.
//   2.78   3.0127605   3.0000133   3.
//
//Aproximação obtida:
//   2.
//   3.
//
//
//Aplicando F na aproximação obtida F(w)
//  -4.267D-11
//  -8.570D-10
