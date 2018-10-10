// Método numérico de sistema linear
//  x  | -1 | 0 | 2
// f(x)| 4  | 1 | -1

xs  = [-1; 0;  2]
fxs = [ 4; 1; -1]
b = fxs

A = [
    1, -1, 1;
    1, 0, 0;
    1, 2, 4;
]

X = inv(A)*b

function y=p(x)
    a0 = X(1)
    a1 = X(2)
    a2 = X(3)
    y = a0 + a1.*x + a2.*x.^(2)
endfunction

axes = get("default_axes");
axes.x_location = "origin";
axes.y_location = "origin";

t = -2:0.05:5
plot(t, p(t))
plot2d(xs, fxs, -7)
