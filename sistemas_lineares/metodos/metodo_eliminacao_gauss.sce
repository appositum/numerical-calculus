clc
////////////MÉTODO DA ELIMINAÇÃO DE GAUSS/////////
//matriz A dos coeficientes do sistema
A =[ 9,-3,1 ; 3,15,-3 ; 12,12,-2 ]
//matriz b dos termos independentes
b =[ 11 ;-9 ; 19]
//MATRIZ AUMENTADA "M"
M = [A b]
//aplicando o escalonamento
R = rref(M)
disp(R)

