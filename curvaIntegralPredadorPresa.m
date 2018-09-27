

A = 3;
B = 9;
C = 10;
D = 0;
E = 5;

f = @(predador, presa) (predador .^ C .* exp ((-E) .* predador)) ./ ((presa .^ (-A)) .* exp(B .* presa));

[X, Y] = meshgrid (1.98: 0.0001:2.02 , 0.32: 0.0001:0.35);
Z = f(X, Y);
figure
contour (X, Y, Z, 20)
shg
