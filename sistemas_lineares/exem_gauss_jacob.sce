// sistema linear
// 10*x1 - x2    + 3*x3  = 16
// x1    + 9*x2  + 5*x3  = -9
// 3*x1  - 10*x2 + 50*x3 = 23

A = [10, -1, 3; 1, 9, 5; 3, -10, 50]
b = [16; -9; 23]
X0 = [0;0;0]
eps = 0.0000000001

R = gaussjacob(A, b, X0, eps)
disp(R)

// calculo do residuo
X = R(:,$)
printf("\nAproximaçao:")
disp(X)
r = A*X - b

// calculo da norma do vetor r
nr = sqrt(sum(r.^2))
printf("\nValor do resíduo:")
disp(nr)
