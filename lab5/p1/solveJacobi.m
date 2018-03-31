function [ x ] = solveJacobi( A, B, err )
[n, m] = size(A);

D = diag(diag(A));

L = zeros(size(A));
for i = 1 : n
   for j = 1 : n
      if i > j
        L(i, j) = -1 * A(i, j);
      end
   end
end

U = zeros(size(A));
for i = 1 : n
   for j = 1 : n
      if i < j
        L(i, j) = -1 * A(i, j);
      end
   end
end

% initializare
M = D;
N = L + U;
T = D^(-1) * (L + U);
C = D^(-1) * B;

xv = rand(n, 1);
xn = T * xv + C;
errC = norm(xn - xv, inf);

while errC > err
   xv = xn;
   xn = T * xv + C;
   errC = norm(xn - xv, inf);
end

x = xn;
end

