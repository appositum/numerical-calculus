// Regra de trapezio simples

// funcao a ser integrada
function y=f(x)
    y = cos(x)
endfunction

// derivada de segunda ordem
function y=df(x)
    y = -cos(x)
endfunction

a = 0
b = 0.6

// aplicacao da regra de trapezio
h = b - a
x1 = a
x2 = b

R = (h./2).*(f(x1) + f(x2))
printf("Aproximaçao da integral: %g\n", R)

// limitante superior do erro
x = a:0.05:b
err = (h.^(3)./12).*max(abs(df(x)))

printf("\nLimitante superior do erro: %g\n", err)
