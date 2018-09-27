delta = 2;
gamma = 4;
yo = linspace(0, 1, 10);
f = @(t, x) x .* (delta - gamma .* x);

[t,x] = ode45(f, [0, 10], yo);
plot (t, x, '.')
