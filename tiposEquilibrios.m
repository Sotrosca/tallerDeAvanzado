lammbda = 10;
betta = 1;

y0 = @(y) y - lammbda * (betta / (lammbda .^ 2)) .* ((1 + lammbda .* exp(1 ./ y)) .^ 2) .* y .^ 2 .* exp(-1 ./ y) ./ (betta .* (1 + lammbda .* exp(1 ./ y)));
x0 = @(y) (betta / lammbda .^ 2) .* ((1 + lammbda .* exp(1 ./ y)) .^ 2) .* y .^ 2 .* exp(-1 ./ y);
t = linspace(0, 1, 100);
y = y0(t);
x = x0(t);

plot(y, x)
axis([0 1 0 10])
xlabel('y0')
ylabel('x0')