function [ res ] = interpolareLagrangeFormaNewton( nodes, nodevals, x )
%Forma Newton a polinomului de interpolare Lagrange
[rows, cols] = size(nodes);
n = cols;

% pas 1 ; sorteaza xi crescator dupa ai = |xi - x|
for i = 1:n
    for j = i + 1 : n
        a1 = abs(nodes(i) - x);
        a2 = abs(nodes(j) - x);
        if a1 > a2
           aux = nodes(i);
           nodes(i) = nodes(j);
           nodes(j) = aux;
           
           aux = nodevals(i);
           nodevals(i) = nodevals(j);
           nodevals(j) = aux;
        end
    end
end

a = zeros(1, n);
for i = 1:n
   a(i) = abs(nodes(i) - x); 
end

% initialize
d = zeros(n, n);
d(1,1) = nodevals(1);
p = zeros(n);
p(1) = nodevals(1);
s = zeros(n);
s(1) = 1;

for i = 2:n
    d(i,1) = nodevals(i);
    y = zeros(n, n);
    for j = 1 : i - 1
        y(i,j) = nodes(i) - nodes(j);
    end
    for j = 2 : i
        d(i, j) = (d(i,j-1) - d(i-1,j-1)) / y(i, i-j+1);
    end
    s(i) = s(i-1) * a(i - 1);
    p(i) = p(i - 1) + s(i) * d(i, i);
    res = p(i);
    if abs(p(i) - p(i-1)) < 1e-5
       break; 
    end
end

end

