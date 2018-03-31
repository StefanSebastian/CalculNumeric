addpath(genpath('../p2'))

[A, B] = generareSistem5(20)
solveQR(A, B)
solveLUP(A, B)