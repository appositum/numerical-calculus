function y=F(x)
    f1 = log(x(1).^(2) + x(2).^(2)) - sin(x(1).*x(2)) - log(2) - log(%pi)
    f2 = exp(x(1) - x(2)) + cos(x(1).*x(2))
    y = [f1; f2]
endfunction

function y=J(x)
    w = x(1).^(2) + x(2).^(2)
    j11 = ((2.*x(1))./w) - x(2).*cos(x(1).*x(2))
    j12 = ((2.*x(2))./w) - x(1).*cos(x(1).*x(2))
    j21 = exp(x(1) - x(2)) - x(2).*sin(x(1).*x(2))
    j22 = - exp(x(1) - x(2)) - x(1).*sin(x(1).*x(2))
    y = [j11, j12; j21, j22]
endfunction

R = naolinear(F, J, [2;2], 0.0001)
disp(R)

printf("Aproximação obtida:")
w = R(:,$)
disp(w)
printf("\n\n")

printf("Aplicando F na aproximação obtida F(w)")
disp(F(w))
