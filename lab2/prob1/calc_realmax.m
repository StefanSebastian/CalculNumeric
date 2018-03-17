function y = calc_realmax()
x = 1;
prev = x;
while 2 * x ~= x
    prev = x;
    x = x * 2;
end
% prev va fi 1.000...0 * 2^emax
% 2 - eps() e 1.111...1 * 2^0
y = prev * (2 - eps());
end

