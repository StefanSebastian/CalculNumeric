addpath(genpath('../p2'))
addpath(genpath('../p1'))

[A, B] = generareSistemDiagDom(100);
solveJacobi(A, B, 10e-5)
solveGS(A, B, 10e-5)

ro = max(abs(eig(A)));
omega = 2 / (1 + sqrt(1 - ro^2))
solveSOR(A, B, 10e-5, omega)