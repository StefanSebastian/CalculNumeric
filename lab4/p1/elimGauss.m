function x = elimGauss( A )
%elimGauss rezolva sistemul de ecuatii prin eliminare gaussiana cu pivotare
%partiala
% date de intrare A = (aij) i =1..n j=1..n+1 ; matrice extinsa
% date de iesire x = x1..xn -- solutia 

% partea de eliminare 
[n, np] = size(A);
for i = 1 : n - 1
    % il calculam pe p
    p = -1;
    for j = i : n
       if A(j, i) ~= 0
          if p == -1
              p = j;
          end
          if A(p, i) < A(j, i)
              p = j;    
          end
       end
    end
    if p == -1
       error('Nu exista p care satisface conditia') 
    end
    
    % interschimbare randuri
    if p ~= i
        A = swapRow(A, i, p);
    end
    
    % eliminare termeni
    for j = i + 1 : n
        mji = A(j, i) / A(i, i);
        A(j, :) = A(j, :) - mji * A(i, :);
    end
end
if A(n, n) == 0
   error('Nu exista solutie unica') 
end

% substitutia inversa
x = zeros(n, 1);
x(n, 1) = A(n, n + 1) / A(n, n);
for i = n - 1 : -1 : 1
    prev = 0;
    for j = i + 1 : n
       prev = prev + A(i, j) * x(j, 1); 
    end
    x(i, 1) = (A(i, n + 1) - prev)/ A(i, i); 
end

end

