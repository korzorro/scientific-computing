% Michael Korzon
% 70-315 Scientific Computing
% SP16
% Homework 3

%% Problem 1
%earth_surface_data = importdata('earthsurfacedata.csv');
%disp(earth_surface_data.colheaders);

%% Problem 2
e = exp(1);
x = y = linspace(-10, 10, 100);
[X, Y] = meshgrid(x, y);
x_0 = y_0 = 0;
f = @(x, y, _A, s_x, s_y) _A .* e .^ -((((x - x_0).^2) / (2 .* (s_x.^2))) + (((y - y_0).^2) / (2 .* (s_y.^2))));

figure

% 2-a
fa = f(X, Y, 5, 2, 1);
subplot(2, 2, 1);
surf(fa, X, Y);
title('A = 5, s_x = 2, s_y = 1')

% 2-b
fb = f(X, Y, 1, 5, 5);
subplot(2, 2, 2);
surf(fb, X, Y);
title('A = 1, s_x = 5, s_y = 5')

%2-c
fc = f(X, Y, 5, 5, 1);
ax3 = subplot(2, 2, 3);
surf(fc, X, Y);
shading interp;
colormap(ax3, autumn);
title('A = 5, s_x = 5, s_y = 1')

%2-d
fd = f(X, Y, 1, 1, 1);
subplot(2, 2, 4);
surf(fd, X, Y);
title('A = 1, s_x = 1, s_y = 1')

%% Problem 3
in = input('Enter a grade percentage (negative to end): ');
grades = [];
while in >= 0
  grades = [grades in];
  in = input('Enter a grade percentage (negative to end): ');
end
figure
grade_ranges = [0 60 70 80 90 100];
grade_counts = fliplr(histc(grades, grade_ranges))(2:end)
bar(grade_counts);
set(gca, 'xticklabel', {'A', 'B', 'C', 'D', 'F'})
