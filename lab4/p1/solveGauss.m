function [ x ] = solveGauss( A, B )
x = elimGauss([A, B]);
end

