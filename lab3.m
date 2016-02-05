% Lab # 3


%% Part 1

particles = [1.7615e-27 
	     1.5579e-27 
	     1.5657e-27 
	     1.5917e-27 
	     1.3782e-27 
	     1.8165e-27 
	     1.7051e-27 
	     1.5971e-27 
	     1.8097e-27 
	     1.5015e-27];

sd = std(particles);
m = mean(particles);
l = length(particles);
t_score = tinv([.025, .975], l-1)(2);
SEM = sd/sqrt(l);
ci = m + t_score*SEM;

fprintf('Standard Deviation: %.4e\n', sd);
fprintf('Mean: %.4e\n', m);
fprintf('Confidence: %.4e\n', ci);
fprintf('\n');

%% Part 2

city1 = [75.4 72.3 81.4 78.3 72.1 68.9 70.4];
city2 = [68.4 68.9 65.3 62.1 54.2 58.5 69.4];

sd = std(city1);
m = mean(city1);
l = length(city1);
t_score = tinv([.025, .975], l-1)(2);
SEM = sd/sqrt(l);
ci1 = m + t_score*SEM;

sd = std(city2);
m = mean(city2);
l = length(city2);
t_score = tinv([.025, .975], l-1)(2);
SEM = sd/sqrt(l);
ci2 = m + t_score*SEM;

fprintf('Max temperature for city 1 is %.1f\n', max(city1));
fprintf('Max temperature for city 1 is %.1f\n', min(city1));
fprintf('Max temperature for city 2 is %.1f\n', max(city2));
fprintf('Max temperature for city 2 is %.1f\n', min(city2));
fprintf('Confidence interval for city 1 is %.2f\n', ci1)
fprintf('Confidence interval for city 2 is %.2f\n', ci2)
fprintf('\n');

%% Part 3
grades = [78 89 65;
	  65 77 77;
	  98 77 56;
	  87 67 56;
	  45 23 77;
	  100 90 100;
	  90 98 100];

grades = sortrows(grades);
grade_report = [1:length(grades); mean(transpose(grades))];

fprintf('The average score for student %i is %.2f.\n', grade_report);
fprintf('The most often occuring value of the grades is %.2f.\n', mode(grades(:)))
