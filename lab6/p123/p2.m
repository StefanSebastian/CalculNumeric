nodes = [1, 1.2, 1.4];
nodevals = exp(nodes);

t = 1 : 0.01 : 2;
res = interpolareLagrangeMultiplePoints(nodes, nodevals, t);

plot(t, res, 'green');
hold on;

resexp = exp(t);
plot(t, resexp);
hold off;