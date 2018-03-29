function [ x ] = solveCholesky( A, B )

R = descCholesky(A);
Rp = R';
y = forwardSubst(Rp, B);
x = backSubst(R, y);
end

