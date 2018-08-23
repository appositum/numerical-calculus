// Questão 2
// letra D

function y=F(x)
    f1 = 6.*x(1) - 2.*cos(x(2).*x(3)) - 1
    f2 = 9.*x(2) + sqrt((x(1)).^2 + sin(x(3)) + 1.06) + 0.9
    f3 = 60.*x(3) + 3.*exp(-x(1).*x(2)) + 10.*(%pi) - 3
    y = [f1; f2; f3]
endfunction

function y=J(x)
    j11 = 6
    j12 = 2.*x(3).*sin(x(2).*x(3))
    j13 = 2.*x(2).*sin(x(2).*x(3))

    j21 = x(1)./(sqrt(x(1).^2 + sin(x(3)) + 1.06))
    j22 = 9
    j23 = cos(x(3))./(2.*(sqrt(x(1).^2 + sin(x(3)) + 1.06)))

    j31 = -3.*x(2).*exp(-x(1).*(x(2)))
    j32 = -3.*x(1).*exp(-x(1).*(x(2)))
    j33 = 60

    y = [j11, j12, j13; j21, j22, j23; j31, j32, j33]
endfunction

R = naolinear(F, J, [0;0;0], 0.00001)
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
//k= 5  iteracoes 
// 
//
//   0.   0.5         0.4981578   0.4981447   0.4981447
//   0.  -0.1861423  -0.1996068  -0.1996059  -0.1996059
//   0.  -0.5235988  -0.5288264  -0.528826   -0.528826 
//
//Aproximação obtida:
//   0.4981447
//  -0.1996059
//  -0.528826
//
//
//Aplicando F na aproximação obtida F(w)
//  -2.220D-16
//   1.110D-16
//  -3.553D-15
