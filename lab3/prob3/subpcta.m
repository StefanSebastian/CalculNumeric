% subpct a
x = zeros(1, 6);
y = zeros(1, 6);
for n = 10:15
    t = zeros(1, n);
    for k = 1:n
        t(k) = -1 + 2 * k / n;
    end
    
    v = vander(t);
    c = cond(v, 'inf')
    
    x(n - 9) = n;
    y(n - 9) = c;
end

scatter(x, y)