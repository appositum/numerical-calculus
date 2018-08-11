function y=f2(d)
    y = 55.*(d.^2) + log(d) - 20 - 0.0095
endfunction

axes = get("default_axes");
axes.x_location = "origin";
axes.y_location = "origin";

t = 0.4:0.05:1
plot(t, f2(t))

a = 0.5
b = 0.7

secante(f2, a, b, 0.00001)

// k= 1      x(1)=      0.5000000       |f(x(1))|=      6.9526472
// k= 2      x(2)=      0.7000000       |f(x(2))|=      6.5838251
// k= 3      x(3)=      0.6027247       |f(x(3))|=      0.5355593
// k= 4      x(4)=      0.6100422       |f(x(4))|=      0.0353925
// k= 5      x(5)=      0.6105600       |f(x(5))|=      0.0002177
// k= 6      x(6)=      0.6105569       |f(x(6))|=      0.0000001
