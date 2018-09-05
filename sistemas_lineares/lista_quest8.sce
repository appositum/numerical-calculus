A = [20, -10, 4; -10, 25, -5; -4, -5, 20]
b = [26; 0; 7]

R = gaussjacob(A, b, [0;0;0], 0.0001)
disp(R)
printf("\nAproximaçao obtida:")
disp(X)
X = R(:,$)

r = A*X - b
printf("\nValor do residuo:")
disp(sqrt(sum(r.^2)))
