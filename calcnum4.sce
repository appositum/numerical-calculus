function y=f(x)
    y = log(x-1) + cos(x-1)
endfunction

// secante(f, 1.1, 5, 0.0001)
x = 1.02:0.05:5
plot(x, f(x)) // [1, 1.5]

secante(f, 1.1, 2, 0.0001)
