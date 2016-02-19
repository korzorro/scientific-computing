% Michael Korzon
% 70-315 Scientific Computing
% Dr. Szczurek
% Due: 2/19/16

%% Problem 1
car1 = [12.4 12.6 14.0 12.2 12.5];
car2 = [12.1 12.0 12.1 12.0 12.9];
car3 = [12.5 11.9 12.4 15.1 11.8];
cars = [car1; car2; car3]';
num_cars = 5;
car_nums = 1:3;
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
fprintf('\n');

% 1-b
sem = stds ./ sqrt(num_cars);
t_score = tinv([.025 .975], num_cars-1);
ci = means + t_score' .* sem;

fprintf('The 95%% confidence interval for car %d is %.2f to %.2f.\n', [car_nums; ci])
fprintf('\n')

% 1-c
fprintf('Car 3 should be considered the fastest because it has the highest value in\n')
fprintf('the 95%% confidence interval. The car is also tied for highest mean speed\n')
fprintf('and produced the single fastest test speed.\n')

%% Problem 2

%{
(3 points) The population growth over time, P(t), can be modeled by the following function:
P(t) = L/(1 + C*e^(kt))
Use this equation to make 3 plots:
• Plot 1 should show the population over time for t=0..100 with L=100, k=0.1, and 3 values of C (100,
25, and 1).
• Plot 2 should show the population over time for t=0..100 with L=100, C=25, and 3 values of k (0.1, 0.3,
and 0.7).
• Plot 3 should show the population over time for t=0..100 with C=25, k=0.1, and 3 values of L (100,
200, and 400).
HINT: define P(t) as a parameterized, anonymous function.

						  
3. (3 points) Generate a 2 × 3 cell array with the following elements and output the contents to the screen:
(1,1): a uniform random matrix of size 5.
(2,1): the string "Hilbert".
(1,2):
(2,2): the function handle for the function sin
(1,3): this is the square of the matrix in (1, 1) .
(2,3): the logical value true.
Additional Requirements
• Name the m-file as hw2.m
• At the top of the file, put a comment with your name, course name number, semester, and homework
number.
• Make sure to document your code using comments, including specifying the inputs and outputs (and
associated units).
• Put %% (cell separators) to separate each problem
What to Turn In
You will turn in the single hw2.m file using BlackBoard. 
}%
