// calculo de erro de interpolaçao

//  x   |  x1   |  x2
// f(x) | f(x1) | f(x2)
// n = 2
// Estimativa do erro
// Er(x) <= |(x-x1)(x-x2)| / 2! * max λ∈[x1, x2] * |f^(n)(λ)|

// Sendo f(x) = 1/x^2 determine o pol. interpolador para x1 = 3 e x2 = 4 usando o método de Lagrange

// f(x1)*(x-x2) / (x1-x2) + f(x2)*(x-x1)/(x2-x1)

function y=f(x)
    y = x.^(-2)
endfunction

// derivada de segunda ordem
function y=df(x)
    y = 6.*x.^(-4)
endfunction

// maximo da derivada
t = 3:0.05:4
w = abs(df(t))
M = max(w)
R = abs((3.5-3).*(3.5-4))./factorial(2)
erro = M.*R
printf("Estimativa de erro:")
disp(erro)
