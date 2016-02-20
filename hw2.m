% Michael Korzon
% Scientific Computing 70-315
% Spring 2016
% Homework 2


%% Problem 1

e = exp(1);

car1 = [12.4 12.6 14.0 12.2 12.5];
car2 = [12.1 12.0 12.1 12.0 12.9];
car3 = [12.5 11.9 12.4 15.1 11.8];
cars = [car1; car2; car3]';
num_cars = 5; % Number of cars in each car vector 
car_nums = 1:3; % Number of different types of cars

% a
means = mean(cars);
medians = median(cars);
stds = std(cars);
mins = min(cars);
maxs = max(cars);

fprintf('The mean for car %d is %.2f.\n', [car_nums; means]);
fprintf('\n');
fprintf('The median for car %d is %.1f.\n', [car_nums; medians]);
fprintf('\n');
fprintf('The standard deviation for car %d is %.2f.\n', [car_nums; stds]);
fprintf('\n');
fprintf('The minimum for car %d is %.1f.\n', [car_nums; mins]);
fprintf('\n');
fprintf('The maximum for car %d is %.1f.\n', [car_nums; maxs]);
fprintf('\n');

% b
sem = stds ./ sqrt(num_cars);
t_score = tinv([.025 .975], num_cars-1);
ci = means + t_score' .* sem;

fprintf('The 95%% confidence interval for car %d is %.2f to %.2f.\n', [car_nums; ci]);
fprintf('\n');

% c
fprintf('Car 2 should be considered the fastest because it has the lowest median \n');
fprintf('value and mean value. These are both good indicators of how fast the car is,\n');
fprintf('but this does not give the full picture. The standard deviation of car 2 is\n');
fprintf('relatively small, which means that the car has a narrow %%95 confidence \n');
fprintf('interval, giving more significance to its low mean value. While car 3\n');
fprintf('produced the two fastest results, it does not reliably outperform car 2\n\n');

%% Problem 2

e = exp(1);

ti = [0 100]; % t interval
_p = @(t, L, C, k) L ./ (1 + C.*e.^(-k.*t));
figure;

% plot 1
% Paramterized functions can take in vectors for variables if defined correctly
p = @(t) _p(t, 100, [100 25 1], .1);
subplot(2, 2, 1);
fplot(p, ti);
title('Plot 1: 100 / (1 + C*e^{-.1*t}) C = [100 25 1]');

% plot 2
p = @(t) _p(t, 100, 25, [.1 .3 .7]);
subplot(2, 2, 2);
fplot(p, ti);
title('Plot 2: 100 / (1 + 25*e^{-k*t}) k = [.1 .3 .7]');

% plot 3
p = @(t) _p(t, [100 200 400], 25, .1);
subplot(2, 2, 3);
fplot(p, ti);
title('Plot 3: L / (1 + 25*e^{-.1*t}) L = [100 200 400]');

%% Problem 3

% Copied in each section because unsure if each section run with clean slate
e = exp(1); 

fprintf('Problem 3 Cell Array')
r = rand(5); % Stored for later use in cells
cells = {r, pi^10, r^2;
	 'Hilbert', @(x) sin(e^x), true};
disp(cells)
