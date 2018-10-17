function y=f(x)
    y = x.*exp(x./2)
endfunction

xs = [2; 2.25; 2.5; 2.75; 3]
fx = [2.71; 3.08; 3.49; 3.96; 4.48]

axes = get("default_axes")
axes.x_location = "origin"
axes.y_location = "origin"

x1 = xs(1)
x2 = xs(2)
x3 = xs(3)
x4 = xs(4)
x5 = xs(5)
function y=p(x)
    L1 = ((x - x2).*(x - x3).*(x - x4).*(x - x5))./((x1 - x2).*(x1 - x3).*(x1 - x4).*(x1 - x5))
    L2 = ((x - x1).*(x - x3).*(x - x4).*(x - x5))./((x2 - x1).*(x2 - x3).*(x2 - x4).*(x2 - x5))
    L3 = ((x - x1).*(x - x2).*(x - x4).*(x - x5))./((x3 - x1).*(x3 - x2).*(x3 - x4).*(x3 - x5))
    L4 = ((x - x1).*(x - x2).*(x - x3).*(x - x5))./((x4 - x1).*(x4 - x2).*(x4 - x3).*(x4 - x5))
    L5 = ((x - x1).*(x - x2).*(x - x3).*(x - x4))./((x5 - x1).*(x5 - x2).*(x5 - x3).*(x5 - x4))
    y = fx(1).*L1 + fx(2).*L2 + fx(3).*L3 + fx(4).*L4 + fx(5).* L5
endfunction

// a)
t = 1:0.05:4
plot2d(xs, fx, -4)

// b) estimativa para f(2.43)
printf("b) f(2.43) = %g\n", p(2.43))

// c) limitante superior do erro x = 2.43
// quinta derivada de f, pois são 5 pontos na tabela
function y=df5(x)
    //y = exp(x./2).*((x./32) + (x./10))
    y = (1./32).*exp(x./2).*(x+10)
endfunction

a = 2:0.05:3
w = abs(df5(a))
M = max(w)
k = 2.43
S = abs((k - x1).*(k - x2).*(k - x3).*(k - x4).*(k - x5))./factorial(5)
erro = S.*M
printf("Limitante do erro x = 2.43: %g", erro)

// d) grafico do polinomio interpolador
plot(t, f(t))
plot(t, p(t))
