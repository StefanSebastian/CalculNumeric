addpath(genpath('../p2'))

[A, B] = generareSistem5(4)
solveQR(A, B)
solveLUP(A, B)