function y=v(r)
    y = 3.*(1 - r./4).^(1./7)
endfunction

function y=Q(r)
    vr = 3.*(1 - r./4).^(1./7)
    y = 2.*(%pi).*r.*vr
endfunction

a = 0
b = 4

//h = (b-a)./m
h = 0.025
x1 = a
x2 = x1 + h
x3 = b

//R = (h./3).*(Q(x1) + 4.*Q(x2) + Q(x3))
R = h.*(Q(a) + 4.*Q((a+b)./2) + Q(b))
disp(R)
