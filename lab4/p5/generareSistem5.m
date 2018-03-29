function [ A, B ] = generareSistem5( n )
B = zeros(n + 1, 1);
for i = 1 : n + 1
    B(i, 1) = -i + 3; 
end

A = zeros(n + 1);
A(1 : n + 1, n + 1) = 1;
for i = 1 : n + 1
    for j = 1 : i - 1
       A(i, j) = -1; 
    end
    A(i, i) = 1;
end

end

