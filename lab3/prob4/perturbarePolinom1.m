function c = perturbarePolinom1( e, n, perturb )
a = poly(1 : n); % an an-1 an-2 .. a1 a0
a = a(2 : end); % an-1 an-2 ... a0
a = fliplr(a); % a0 a1 ... an-1

for i = 1 : n
    a(i) = a(i) + perturb(i);
end

sum = 0; % suma de forma : |a0| + |e|*|a1| + |e^2|*|a2| + .. + |e^(n-1)| * |an-1|
for i = 0 : n - 1 % indexarea in matlab de la 1 deci a(i+1) = ai
   sum = sum + abs(a(i + 1)) * abs(e)^i; 
end

% calculam p'(e)
p = 1; % derivata se anuleaza cu exceptia produsului in care (x - e) e derivata
for i = 1:n
    if i ~= e
        p = p * (e - i);
    end
end

c = sum / abs(e * p);
end