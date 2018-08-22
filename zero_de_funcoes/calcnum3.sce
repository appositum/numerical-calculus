function y=f(x)
    y = exp(x) + 2.^(-x) + 2.*cos(x) -6
endfunction

function y=df(x)
    y = exp(x) - 2.^(-x).*log(2) - 2.*sin(x)
endfunction

x = -4:0.05:5
//plot(x, f(x)) // [-3.5, -2], [1.5, 2]
// plot(x, df(x))

newton(f, df, -2.7, 0.0001)
bissecao(f, -3.5, -2.5, 0.0001)
