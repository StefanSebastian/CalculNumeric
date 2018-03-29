
x = solveCholesky([1 2 1; 2 5 3; 1 3 3], [4 10 7]') % expected 1 1 1

[A, B] = generateCholesky(4);
x = solveCholesky(A, B)