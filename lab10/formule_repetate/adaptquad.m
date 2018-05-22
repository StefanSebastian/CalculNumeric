function [ res ] = adaptquad( f, a, b, eps, met )
m = 5;
if abs(met(f, a, b, m) - met(f, a, b, 2 * m)) < eps
   res = met(f, a, b, 2 * m);
else
    res = adaptquad(f, a, (a + b) / 2, eps, met) + adaptquad(f, (a + b) / 2, b, eps, met);
end
end

