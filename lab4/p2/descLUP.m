function [ L, U, P ] = descLUP( A )
%Descompunere LUP pt matricea A
[m, n] = size(A);
P = zeros(m, n);
piv = (1:m)';
for i = 1 : m - 1 
    [elem, poz] = max(abs(A(i : m, i)));
    poz = poz + i - 1; % offset ; pt ca pozitia va fi raportata la intervalul i : m
    
    if poz ~= i
       A = swapRow(A, i, poz);
       piv = swapRow(piv, i, poz);
    end
    
    % complementul lui Schur
    lin = i + 1 : m;
    A(lin, i) = A(lin, i) / A(i, i);
    A(lin, lin) = A(lin, lin) - A(lin, i) * A(i, lin);
end

for i = 1 : m
    P(i, piv(i)) = 1;
end
U = triu(A);
L = tril(A, -1) + eye(m);

end

