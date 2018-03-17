function y = calc_eps0()
x = 1;
eps0 = 1;
while x ~= 0
    eps0 = x;
    x = x / 2;
y = eps0;
end

