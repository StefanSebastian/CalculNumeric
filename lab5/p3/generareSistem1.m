function [ A, B ] = generareSistem1( n )
B = ones(n, 1) .* 3;
B(1, 1) = 4;
B(n, 1) = 4;

A = zeros(n);
for i = 1 : n
    for j = 1 : n
       if i == j
          A(i, j) = 5;
          if j - 1 > 0
             A(i, j - 1) = -1; 
          end
          if j + 1 <= n
             A(i, j + 1) = -1; 
          end
       end
    end
end
end

