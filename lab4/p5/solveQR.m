function [ x ] = solveQR( A, B )
[Q, R] = qr(A);
QB = Q' * B;
x = backSubst(R, QB);
end

