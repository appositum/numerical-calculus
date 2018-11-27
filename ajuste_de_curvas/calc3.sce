// Q = Q1
// Q0 = ln(b)
// e^(Q0) = e^(ln(b))
// b = e^(Q0)

xs = [1.0; 1.25; 1.5; 1.75; 2.0]
fxs = [5.10; 5.79; 6.53; 7.45; 8.46]

a11 = 5
a12 = sum(xs)
a21 = a12
a22 = sum(xs.^2)

A = [a11, a12; a21, a22]

b1 = sum(log(fxs))
b2 = sum(log(fxs).*xs)
b = [b1; b2]

X = inv(A)*b
a0 = X(1)
a1 = X(2)

a = a1
b = exp(a0)

printf("a: %g\n", a)
printf("b: %g\n", b)

function y=p(x)
    y = b.*exp(a.*x)
endfunction

axes = get("default_axes");
axes.x_location = "origin";
axes.y_location = "origin";

t = -2:0.05:5
plot(t, p(t))
plot2d(xs, fxs, -4)

err = sum((fxs - p(xs)).^2)
printf("Erro: %g\n", err)
