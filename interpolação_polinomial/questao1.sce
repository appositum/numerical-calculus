x = [0; 0.5; 0.75; 1]
y = [1; 4.482; 9.488; 20.086]

// coeficientes
c1 =[1; 1; 1; 1]
c2 = x
c3 = x.^(2)
c4 = x.^(3)
A = [c1 c2 c3 c4]

// termos independentes
b = y
X = inv(A)*b
a0 = X(1)
a1 = X(2)
a2 = X(3)
a3 = X(4)

// a) polinomio interpolador da tabela
printf("a) %g", p(0.65))
function y=f(x)
    y = exp(3.*x)
endfunction

function y=p(x)
    y = a0 + a1.*x + a2.*(x.^(2)) + a3.*(x.^(3))
endfunction

// b) erro absoluto
err = abs(f(0.65) - p(0.65))
printf("Erro absoluto |y(0.65) - p(0.65)|: %g\n", err)

axes = get("default_axes")
axes.x_location = "origin"
axes.y_location = "origin"

t = -1:0.05:2
plot2d(x, y, -4)
plot(t, p(t))
plot(t, f(t))
