function [ x ] = forwardSubst( A, b )
%solve the system using forward substitution
x = zeros(size(b));
n = length(b);
for k = 1 : n
    x(k) = (b(k) - A(k, 1 : k - 1) * x(1 : k - 1)) / A(k, k);
end

end

