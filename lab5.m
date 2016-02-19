e = exp(1);

%% Exercise 1

% Define functions
f = @(x) e.^x;
series = 0:3;
scalar_g = @(x) sum(x.^series ./ factorial(series));
g = @(x) arrayfun(sg, x)
interval = [-1 1];

% Plot functions
fplot(f, interval, 'b++')
hold on
fplot(g, interval, 'r--')
hold on 
h = @(x) f(x) - g(x)
fplot(h, interval, 'g.-')

% Assign labels to plot
title('e^x and Compared to Taylor Series Approximations')
xlabel('x')
ylabel('y')


%% Exercise 2
f = @(t) cos(2.*t + pi)
subplot(f, [0 pi])
x = @(t) e.^t - 1
y = @(t) sin(t)
