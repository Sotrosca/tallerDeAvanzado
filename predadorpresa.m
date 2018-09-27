clear all
A = 3;
B = 9;
C = 10;
D = 0;
E = 5;

predador0 = C/E + 0.01;
presa0 = A/B ;

x0 = [predador0; presa0];

f = @(t, x)  [-A .* x(1) + B .* x(1) .* x(2); C .* x(2) - D .* x(2) ^ 2 - E .* x(1) .* x(2)];
opciones.RelTol = 1e-8;
ociones.AbsTol = 1e-8;
[t, x] = ode45(f, [0, 100], x0, opciones);


subplot(2, 1 ,1)
plot(x(:, 1), x(:, 2) , 'red')
xlabel ('predador')
ylabel ('presa')
subplot(2, 1, 2)
hold on 
plot(t, x(:, 1))
plot(t, x(:, 2))
legend('Predadores', 'Presas')
xlabel('tiempo')
ylabel('poblacion')