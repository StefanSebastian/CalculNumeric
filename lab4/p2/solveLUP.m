function [ x ] = solveLUP( A, b )
%rezolva un sistem de ec prin descompunerea LUP

[L, U, P] = descLUP(A);
y = forwardSubst(L, P * b);
x = backSubst(U, y);
end

