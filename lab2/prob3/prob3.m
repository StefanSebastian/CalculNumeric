% x m n 

% C matrix
m = 2;
n = 2;
c = zeros(1, m + n + 1);
for p = 1 : m + n + 1
    c(p) = (-1)^(p - 1) / factorial(2*(p -1) + 1);
end
%c
%c(m + 1 : m + n)
%fliplr(c(m - n + 2 : m + 1))
T = toeplitz(c(m + 1 : m + n), fliplr(c(m - n + 2 : m + 1)));
rs = c(m + 2 : m + n + 1);
X = linsolve(T, rs);
X