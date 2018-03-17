function y = calc_eps()
x = 1;
while (1 + x) ~= 1
    x = x / 2;
end
y = x * 2;
end
