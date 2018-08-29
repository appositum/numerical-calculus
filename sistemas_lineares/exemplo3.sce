A = [9, -3, 1; 3, 15, -3; 1, 1, -7]
b = [11; -9; 5]

// matriz aumentada
M = [A b]

// escalonamento
R = rref(M)
disp(R)

printf("\nSolução do sistema linear:")
disp(R(:,$))

// c = a + b, logo o sistema possui soluções infinitas e a linha c é anulada no escalonamento
A2 = [9, -3, 1; 3, 15, -3; 12, 12, -2]
M2 = [A2 b]
R2 = rref(M2)
disp(R2)
printf("\nSolução do sistema linear:")
disp(R2(:,$))
