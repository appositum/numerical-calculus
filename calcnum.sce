//function y=f1(x)
//    y = 2.*x.^(3) - 5.*x.^(2) - x+3
//endfunction

// gráfico
// início:passo:fim
x = 0.02:0.05:5
//plot(x, f2(x))

function y=f2(x)
    y = exp(-x) + x.^(2) - 10
endfunction

//plot(x, f2(x))

function y=f3(x)
    y = log(x) - 2.*x + 1
endfunction

plot(x, f3(x))
