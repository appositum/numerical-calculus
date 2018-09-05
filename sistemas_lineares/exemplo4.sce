// sistema linear
// 10*x1 - x2    + 3*x3  = 16
// x1    + 9*x2  + 5*x3  = -9
// 3*x1  - 10*x2 + 50*x3 = 23

T = [0, 1/10, -3/10; -1/9, 0, -5/9; -3/50 10/50, 0] // matriz iterativa
C = [16/10; -1; 23/50] // valores independentes

X1 = T*[0;0;0] + C
X2 = T*X1 + C
X3 = T*X2 + C
X4 = T*X3 + C
X5 = T*X4 + C

A = [10, -1, 3; 1, 9, 5; 5, -10, 50]
b = [16; -9; 23]
// sol. exata
disp(inv(A)*b)
