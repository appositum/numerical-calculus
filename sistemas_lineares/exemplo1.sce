// matriz A: coeficientes do sistema
A = [9, -3, 1; 3, 15, -3; 1, 1, -7]

// matriz b dos termos independentes
b = [11; -9; 5]

//disp(A(:,2))
//disp(A(1,:))
//disp(det(A))

// método da matriz inversa
if (det(A) == 0) then
    printf("Não é possível encontrar a solução:\n\tdet(A) = 0")
else
    X = inv(A)*b
    printf("Solução exata:\n")
    disp(X)
    
    // resíduo
    r = A*X - b
    nr = sqrt(sum(r.^2))
    printf("\nValor do resíduo: %g", nr)
end
