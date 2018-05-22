function [ res ] = apelAdQuad2( f, a, b, eps )
res = pasAdQuad2(f, a, b, eps, f(a), f((a+b)/2), f(b));
end

