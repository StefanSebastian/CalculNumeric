function [ A, B ] = generareSistem2( n )
% n >= 5
B = ones(n, 1);
B(1, 1) = 3;
B(n, 1) = 3;
B(2, 1) = 2;
B(3, 1) = 2;
B(n - 1, 1) = 2;
B(n - 2, 1) = 2;

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
          if j + 3 <= n
              A(i, j + 3) = -1;
          end
          if j - 3 > 0
              A(i, j - 3) = -1;
          end
       end
    end
end
end

