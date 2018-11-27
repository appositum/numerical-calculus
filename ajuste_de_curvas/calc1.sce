// ajuste linear
xs = [1; 2; 3; 4; 5; 6; 7; 8; 9; 10]
ys = [1.3; 3.5; 4.2; 5.0; 7.0; 8.8; 10.1; 12.5; 13.0; 15.6]

a11 = 10
a12 = sum(xs)
a21 = a12
a22 = sum(xs.^2)

A = [a11, a12; a21, a22]

b1 = sum(ys)
b2 = sum(xs.*ys)
b = [b1; b2]

X = inv(A)*b
a0 = X(1)
a1 = X(2)

function y=f(x)
    y = a0 + a1.*x
endfunction

axes = get("default_axes");
axes.x_location = "origin";
axes.y_location = "origin";

t = 0:0.05:11
plot(t, f(t))
plot2d(xs, ys, -4)

err = sum((ys - f(xs)).^2)
printf("Erro: %g\n", err)
