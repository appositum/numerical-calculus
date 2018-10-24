// regra 1/3 de Simpson
function y=f(x)
    y = cos(x)
endfunction

// derivada de ordem 4
function y=df(x)
    y = cos(x)
endfunction

a = 0
b = 0.6

h = (b-a)./2
x1 = a
x2 = x1+h
x3 = b
R = (h./3).*(f(x1) + 4.*f(x2) + f(x3))
printf("Aproximacao da integral: %g\n", R)

// calculo do erro
x = a:0.05:b
err = ((h.^(5))./90).*max(abs(df(x)))
printf("\nLimitante superior do erro: %g\n", err)
