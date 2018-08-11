function y=f3(r)
    y = 10 - 20.*(exp((-0.2).*r) - exp((-0.75).*r)) - 5
endfunction

function y=df3(r)
    y = 4.*exp((-0.2).*r) - 15.*exp((-0.75).*r)
endfunction

axes = get("default_axes");
axes.x_location = "origin";
axes.y_location = "origin";

t = -3:0.05:10
plot(t, f3(t))

newton(f3, df3, 1, 0.00001)

//         MÉTODO DE NEWTON

// k= 1      x(1)=0.494228       |f(x(1))|=0.687772
// k= 2      x(2)=0.596414       |f(x(2))|=0.0357701
// k= 3      x(3)=0.602337       |f(x(3))|=0.000113501
// k= 4      x(4)=0.602355       |f(x(4))|=1.15368e-09
