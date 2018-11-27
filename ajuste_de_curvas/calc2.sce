// ajuste quadratico
xs = [0; 0.25; 0.5; 0.75; 1.0]
fxs = [1.0; 1.2840; 1.6487; 2.1170; 2.7183]

a11 = 5
a12 = sum(xs)
a13 = sum(xs.^2)

a21 = a12
a22 = a13
a23 = sum(xs.^3)

a31 = a13
a32 = a23
a33 = sum(xs.^4)

A = [a11, a12, a13; a21, a22, a23; a31, a32, a33]

b1 = sum(fxs)
b2 = sum(fxs.*xs)
b3 = sum(fxs.*(xs.^2))
b = [b1; b2; b3]

X = inv(A)*b
a0 = X(1)
a1 = X(2)
a2 = X(3)

function y=p(x)
    y = a0 + a1.*x + a2.*(x.^2)
endfunction

axes = get("default_axes");
axes.x_location = "origin";
axes.y_location = "origin";

t = -2:0.05:5
plot(t, p(t))
plot2d(xs, fxs, -4)

err = sum((fxs - p(xs)).^2)
printf("Erro: %g\n", err)
