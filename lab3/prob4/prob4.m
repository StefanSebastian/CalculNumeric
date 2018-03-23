conditionarePolinom1(14, 20);
conditionarePolinom2(14, 20);

% https://www.mathworks.com/help/matlab/math/random-numbers-with-specific-mean-and-variance.html
a = 10^(-5);
b = 0;
y = a.*randn(20,1) + b;

conditionarePolinom1(2, 20)
perturbarePolinom1(2, 20, y)

