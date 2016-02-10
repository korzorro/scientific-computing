% Michael Korzon
% 70-315 Scientific Computing
% Dr. Szczurek
% Due: 2/19/16

%% Problem 1
car1 = [12.4 12.6 14.0 12.2 12.5];
car2 = [12.1 12.0 12.1 12.0 12.9];
car3 = [12.5 11.9 12.4 15.1 11.8];
cars = [car1; car2; car3]';
car_nums = [1 2 3];
% 1-a
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
