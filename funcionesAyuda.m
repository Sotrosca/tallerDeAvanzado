clear all
lammbda = 0.5;
betta = 0.3;
x0 = 1;
y0 = 0.4;
y = linspace(0.3, 10, 100000);
f = @(y) lammbda .* x0 ./ (exp(-1 ./ y) + lammbda);
g = @(y) - betta .* (y0 - y) ./ exp(-1 ./ y);
fx = f(y);
gx = g(y);
hold on
plot(y, fx, 'red')
plot(y, gx, 'blue')
xlabel('Temperatura')
ylabel('Concentracion')
hold off