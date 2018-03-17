function [s, N] = MyCos( x, err )
x = mod(x, 2*pi);
s = 0; N = 0; 
t = 1; % primul termen al seriei e 1
while abs(t) > err % fiind serie alternanta modulul erorii e mai mic de modulul primului termen neglijat
    s = s + t;
    N = N + 1;
    t = (-1)^N * ((x^(2*N)) / (factorial(2*N)));
end

