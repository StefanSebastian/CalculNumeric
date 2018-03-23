function c = perturbarePolinom2( e, n, perturb )
a = zeros(n , 1); % coeficientii
for i = 1:n
    a(i) = 1 / 2^i;
end
a = fliplr(a);

for i = 1 : n
    a(i) = a(i) + perturb(i);
end

sum = 0; % suma de forma : |a0| + |e|*|a1| + |e^2|*|a2| + .. + |e^(n-1)| * |an-1|
for i = 0 : n - 1 % indexarea in matlab de la 1 deci a(i+1) = ai
   sum = sum + abs(a(i + 1)) * abs(e)^i; 
end

% calculam p'(e)
p = 0;
for i = n : -1 : 1
    p = p + (i * e^(i - 1)) / 2^(n - i); 
end

c = sum / abs(e * p);
end

