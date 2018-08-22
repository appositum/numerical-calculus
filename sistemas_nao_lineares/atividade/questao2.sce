function y=F(x)
    f1 = x(1).^2 - x(1) + x(2).^2 + x(3).^2 - 5
    f2 = x(1).^2 + x(2).^2 - x(2) + x(3).^2 - 4
    f3 = x(1).^2 + x(2).^2 + x(3).^2 + x(3) - 6
    y = [f1;f2;f3]
endfunction

function y=J(x)
    j11 = 2.*x(1) - 1
    j12 = 2.*x(2)
    j13 = 2.*x(3)
    
    j21 = 2.*x(1)
    j22 = 2.*x(2) - 1
    j23 = 2.*x(3)
    
    j31 = 2.*x(1)
    j32 = 2.*x(2)
    j33 = 2.*x(3) + 1
    
    y = [j11, j12, j13; j21, j22, j23; j31, j32, j33]
endfunction

R = naolinear(F, J, [-0.8;0.2;1.8], 0.0001)
disp(R)

printf("Aproximação obtida:")
w = R(:,$)
disp(w)
printf("\n\n")

printf("Aplicando F na aproximação obtida F(w)")
disp(F(w))
