function [ x ] = backSubst( A, b )
%solve the system with backward substitution
x=zeros(size(b));
n = length(b);
for k = n : -1 : 1
   x(k) = (b(k) - A(k, k + 1 : n) * x(k + 1 : n)) / A(k, k); 
end
end

