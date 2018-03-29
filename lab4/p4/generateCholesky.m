function [ A, B ] = generateCholesky( n )
A = rand(n);
A = A + A'; % simetrizare
A = A + eye(n) * n;
B = A * ones(n, 1);
end

