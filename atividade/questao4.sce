function y=f4(t)
    m = 1.25
    h0 = 180
    g = 32.17
    k = 0.1
    y = h0 - ((m.*g)./k).*t + ((m.^2).*g)./(k.^2).*(1 - exp((-k.*t)./m))
endfunction

axes = get("default_axes");
axes.x_location = "origin";
axes.y_location = "origin";

t = -5:0.05:6
plot(t, f4(t))

secante(f4, 2, 4, 0.0001)

k= 1      x(1)=      2.0000000       |f(x(1))|=    118.9584858 
k= 2      x(2)=      4.0000000       |f(x(2))|=     51.9710192 
k= 3      x(3)=      3.3919011       |f(x(3))|=     10.6042196 
k= 4      x(4)=      3.4949517       |f(x(4))|=      0.6262478 
k= 5      x(5)=      3.5014195       |f(x(5))|=      0.0086368 
k= 6      x(6)=      3.5013315       |f(x(6))|=      0.0000068
