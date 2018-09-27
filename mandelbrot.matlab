l = linspace(-2, 2, 100);
X = meshgrid(l,l);
Y = X*i;
Y = Y';
A = X + Y;
B = A
for k = 1:1000
	A = (A .* A) + B
end
A = abs(A)
[X,Y] = meshgrid (l, l);
