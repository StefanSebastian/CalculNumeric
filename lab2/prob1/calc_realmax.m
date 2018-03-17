function y = calc_realmax()
x = 1;
prev = x;
while 2 * x ~= x
    prev = x;
    x = x * 2;
end
    
x = prev;
while x + eps() ~= Inf
    x = x + eps; 
    prev = x;
end

y = prev;
end

