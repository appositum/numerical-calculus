// regra 3/8 de Simpson
function y=f(x)
    y = cos(x)
endfunction

// derivada de ordem 4
function y=df(x)
    y = cos(x)
endfunction

a = 0
b = 0.6

h = (b-a)./3
x1 = a
x2 = x1+h
x3 = x1 + 2.*h
x4 = b
//R = (h./3).*(f(x1) + 4.*f(x2) + f(x3))
//printf("Aproximacao da integral: %g\n", R)

// calculo do erro
x = a:0.05:b
err = ((3.*h.^(5))./80).*max(abs(df(x)))
printf("\nLimitante superior do erro: %g\n", err)