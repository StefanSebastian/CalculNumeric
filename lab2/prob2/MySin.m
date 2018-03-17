function [s, N] = MySin( x, err )
x = mod(x, 2*pi);
s = 0; N = 0; 
t = x; % primul termen al seriei e x
while abs(t) > err % fiind serie alternanta modulul erorii e mai mic de modulul primului termen neglijat
    s = s + t;
    N = N + 1;
    t = (-1)^N * ((x^(2*N + 1)) / factorial(2*N + 1));
end

