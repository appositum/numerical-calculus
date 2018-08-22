function y=F(x)
    f1 = x(1) + x(2) - 3
    f2 = x(1).^2 + x(2).^2 - 9
    y = [f1;f2]
endfunction

function y=J(x)
    j11 = 1
    j12 = 1
    j21 = 2.*x(1)
    j22 = 2.*x(2)
    y = [j11, j12; j21, j22]
endfunction

R = naolinear(F, J, [1;5], 0.0001)
disp(R)

printf("Aproximação obtida:")
w = R(:,$)
disp(w)
printf("\n\n")

printf("Aplicando F na aproximação obtida F(w)")
disp(F(w))
