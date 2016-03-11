%% Problem 1
rainfall = importdata('bostrain.csv');
bar(mean(rainfall.data));
set(gca, 'xticklabel', rainfall.colheaders);

%% Problem 2

% 2-a
t = linspace(1, 10, 100);
x = @(t) e.^(t .* cos(t));
y = @(t) t - 4 + log(t);
z = @sin;
plot3(x(t), y(t), z(t), 'b');
hold on;
z = @cos;
plot3(x(t), y(t), z(t), 'r');

% 2-b
legend('Function 1 (z = sin)', 'Function 2 (z = cos)');

%% Problem 3

% 3-a
figure;
shading interp;
x = y = linspace(-2*pi, 2*pi, 100);
[X, Y] = meshgrid(x,y);
f = @(x, y) x.^2 - cos(x) + sin(y);
F = f(X, Y);
surf(X, Y, F);

% 3-b
figure;
contour(F);
colorbar;
