function y=f5(t)
    g = 9.81
    u = 1800
    m0 = 120000
    q = 2200
    y = u.*log(m0./(m0-q.*t)) - q.*t - 970
endfunction

axes = get("default_axes");
axes.x_location = "origin";
axes.y_location = "origin";

t = 1:0.05:20
plot(t, f5(t))

a = -1
b = 0.5

secante(f5, -1, 0.5, 0.00001)

k= 1      x(1)=     -1.0000000       |f(x(1))|=   1197.2988529 
k= 2      x(2)=      0.5000000       |f(x(2))|=   2053.4239096 
k= 3      x(3)=     -0.4475234       |f(x(3))|=      0.1565510 
k= 4      x(4)=     -0.4475956       |f(x(4))|=      0.0000206 
k= 5      x(5)=     -0.4475956       |f(x(5))|=      0.0000000
