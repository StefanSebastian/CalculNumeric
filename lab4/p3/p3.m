addpath(genpath('../p2'))
addpath(genpath('../p1'))

[A, B] = generareSisteme(4)
solveLUP(A, B)
solveGauss(A, B)