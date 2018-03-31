solveGS([2 1; 5 7], [4; 19], 0.1)
solveSOR([2 1; 5 7], [4; 19], 0.1, 1)

% omega optim
A = [2 1; 5 7];
ro = max(abs(eig(A))); % https://www.mathworks.com/matlabcentral/answers/378909-spectral-radius-of-matrix?s_tid=al_cta2
omega = 2 / (1 + sqrt(1 - ro^2))
solveSOR(A, [4; 19], 0.1, omega)
