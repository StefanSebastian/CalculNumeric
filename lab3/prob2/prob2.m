x = zeros(1, 6);
y = zeros(1, 6);
for n = 10:15
    h = hilb(n);
    c = cond(h, 2)
    
    x(n - 9) = n;
    y(n - 9) = c;
end

scatter(x, y)