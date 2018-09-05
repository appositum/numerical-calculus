// sistema nao diagonalmente dominante
A = [2, -1, 6; 9, -2, 1; 1, -5, -2]
b = [3;2;-4]

// disp(gaussjacob(A, b, [0;0;0], 0.0001))
// Troque as linhas  !--error 10000 
// A matriz  não é diagonalmente dominante

A2 = [4, -2, 1; 1, -5, -2; 2, -1, 6]
b2 = [2;-4;3]

disp(gaussjacob(A2, b2, [0;0;0], 0.0001))
