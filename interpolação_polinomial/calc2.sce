// Método numérico de Lagrage
//  x   | -2  | 0.79 | 2.7 | 4.2
// f(x) | 1.3 | -1   | 2.9 | 5.73

xs  = [-2; 0.79; 2.7; 4.2]
fxs = [1.3; -1; 2.9; 5.73]

function y=p(x)
    x1 = xs(1)
    x2 = xs(2)
    x3 = xs(3)
    x4 = xs(4)
    L1 = ((x - x2).*(x - x3).*(x - x4))./((x1 - x2).*(x1 - x3).*(x1 - x4))
    L2 = ((x - x1).*(x - x3).*(x - x4))./((x2 - x1).*(x2 - x3).*(x2 - x4))
    L3 = ((x - x1).*(x - x2).*(x - x4))./((x3 - x1).*(x3 - x2).*(x3 - x4))
    L4 = ((x - x1).*(x - x2).*(x - x3))./((x4 - x1).*(x4 - x2).*(x4 - x3))
    y = fxs(1).*L1 + fxs(2).*L2 + fxs(3).*L3 + fxs(4).*L4
endfunction

t = -3:0.05:5
plot(t, p(t))
plot2d(xs ,fxs, -4)
