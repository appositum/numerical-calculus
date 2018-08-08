// Q7 - lista 1
// F(t) = I = Q / RC * e^(-t / RC)
// onde
// I = 0.83
// Q = 7C
// R = 3
// C = 2

axes = get("default_axes");
axes.x_location = "origin";
axes.y_location = "origin";

function y=f1(t)
    y = (7 ./6).*exp(-t./6) - 0.83
endfunction

// t = 3:0.05:6
// plot(t, f1(t)) // [1.5, 2.5]
// secante(f1, 1.5, 2.5, 0.00001)


// Q4 - lista 1
// M = [
//     [0.5, 0.2, t],
//     [0.4, t, 0.5],
//     [t, 0.5, 0.2]
// ]
// det(M) = 0
// -t³ + 0.4t - 0.141 = 0

function y=f2(t)
    y = -t.^(3) + (0.4).*t - 0.141
endfunction

function y=df2(t)
    y = -3.*(t.^(2)) + 0.4
endfunction

// t = -1:0.05:1
// plot(t, f2(t)) // [-0.8, -0.6]
// newton(f2, df2, -0.7, 0.0001)


// Q9 - lista 1
function y=f3(h)
    V = 12.4
    L = 10
    r = 1
    a = (0.5).*(%pi).*(r.^2)
    b = (r.^2).*(asin(h/r))
    c = h.*(sqrt(r.^(2) - h.^(2)))
    y = L.*(a - b - c) - V
endfunction

t = -1:0.05:1
plot(t, f3(t)) // [0, 0.4]
secante(f3, 0.1, 0.2, 0.00001)
P = 1 - 0.1661655
printf("Profundidade: %g", P)
