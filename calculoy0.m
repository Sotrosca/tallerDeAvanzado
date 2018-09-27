x0 = 4;
lammbda = 10;
betta = 1;
y0arbitrario = 0;

y0 = @(y) y - lammbda .* x0 ./ (betta .*(1 + lammbda .* exp(1 ./ y)));

funcionLimite = @(y) y - lammbda .* x0 ./ (betta * (1 + lammbda));

t = linspace(0, 30, 100);

A = y0(t);
B = funcionLimite(t);

hold on
plot(t, A, 'r')
plot(t, B, 'b')
plot(t, t, 'b')
%plot(t, ones(100, 1) .* y0arbitrario, 'g')
hold off
xlabel('y equilibrio')
ylabel('y0')