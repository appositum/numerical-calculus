// questao1

function y=fa(x)
    y = x.^(3) + 3.*x - 1
endfunction

function y=fb(x) // x1 = (-1,0); x2 = (1, 2)
    y = x.^(2) - sin(x) - x
endfunction

function y=fc(x)
    y = x.*log(x) - 3
endfunction

function y=fd(x)
    y = x.^(2).*log(x) - 3
endfunction

function y=fe(x)
    y = sqrt(x) - 5.*exp(-x)
endfunction

function y=ff(x)
    y = 5.*log(x) + 0.4.*x - 2
endfunction

x = -4:0.05:5
plot(x, fb(x))

a = get("default_axes");
a.x_location = "origin";
a.y_location = "origin";

bissecao(fb, -1, 0, 10.^(-4))
