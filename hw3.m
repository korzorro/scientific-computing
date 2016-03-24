% Michael Korzon
% 70-315 Scientific Computing
% SP16
% Homework 3

%% Problem 1

% 1-a
% Skipping header line
filename = 'earthsurfacedata.csv';
esd = csvread(filename, 1, 0);

% 1-b
years = floor(esd(:,3,end)./10).*10;
results = [];
unique_years = unique(years)';

for year = unique_years
  selected = esd(years == year, :);
  temperatures = selected(:,4,end);
  results = [results; year mean(temperatures) std(temperatures)];
end

fprintf('Decade  Avg.  STD\n');
fprintf('%6d%6.2f%6.2f\n', results');

% 1-c
X = results(:,1,end);
Y = results(:,2,end);
figure;
b = bar(X, Y);

%% Problem 2
e = exp(1);
x = y = linspace(-10, 10, 100);
[X, Y] = meshgrid(x, y);
x_0 = y_0 = 0;
f = @(x, y, _A, s_x, s_y) _A .* e .^ -((((x - x_0).^2) / (2 .* (s_x.^2))) + (((y - y_0).^2) / (2 .* (s_y.^2))));

% 2-a
fa = f(X, Y, 5, 2, 1);
figure;
subplot(2, 2, 1);
surf(fa, X, Y);
title('A = 5, s_x = 2, s_y = 1');

% 2-b
fb = f(X, Y, 1, 5, 5);
subplot(2, 2, 2);
surf(fb, X, Y);
title('A = 1, s_x = 5, s_y = 5');

%2-c
fc = f(X, Y, 5, 5, 1);
ax3 = subplot(2, 2, 3);
surf(fc, X, Y);
shading interp;
% Attempt to make only one plot autumn shading
colormap(ax3, autumn);
title('A = 5, s_x = 5, s_y = 1');

%2-d
fd = f(X, Y, 1, 1, 1);
subplot(2, 2, 4);
surf(fd, X, Y);
title('A = 1, s_x = 1, s_y = 1')

%% Problem 3
grades = [];
for i = 1:10
  in = input('Enter a grade percentage: ');
  grades = [grades in];
end
figure;
grade_ranges = [0 60 70 80 90 100];
grade_counts = fliplr(histc(grades, grade_ranges));
grade_counts = grade_counts(2:end);
bar(grade_counts);
set(gca, 'xticklabel', {'A', 'B', 'C', 'D', 'F'});
