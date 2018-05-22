function [ res ] = pasAdQuad2( f, a, b, eps, fa, fc, fb )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
h = b - a;
c = (a + b) / 2;
fd = f((a + c) / 2);
fe = f((c + b) / 2);
S1 = h/6 * (fa + fb + 4 * fc);
S2 = h/12 * (fa + 4 * fd + 2 * fc + 4 * fe + fb);
if abs(S1 - S2) < eps
    res = S2 + (S2 - S1) / 15;
else
    res = pasAdQuad2(f, a, c, eps, fa, fd, fc) + pasAdQuad2(f, c, b, eps, fe, fc, fb);
end

end

