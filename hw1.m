#!/usr/bin/octave

%% Part 1

% 1-a
a = 1/15+sind(45)-4*pi;

% 1-b
b = sqrt(log(9)/log(3) + exp(1)^(9*i));

% 1-c
c = (45+7/5)/(factorial(3)+6*pi);

fprintf('a = %f\n', a);
fprintf('b = %f\n', b);
fprintf('c = %f\n', c);

%% Section 2
m = input('Enter a mass in kg: ');
v = input('Enter a velocity in m/s: ');
c = 3.0e8;

% 2-a
kr = m*c^2*(1.0/sqrt(1-v^2/c^2)-1);
fprintf('Relativistic Kinetic Energy: %.6e\n', kr);

% 2-b
kc = 1/2*m*v^2;
fprintf('Classical Kinetic Energy: %.6e\n', kc);

% 2-c
d = abs(kc-kr);
fprintf('Absolute Difference: %.6e\n', d);

% 2-d
v = c-1;
kr = m*c^2*(1.0/sqrt(1-v^2/c^2)-1);
kc = 1/2*m*v^2;
d = abs(kc-kr);

fprintf('The difference betwen K[r] and K[c] as v approaches c is infinity.\n');
fprintf('To demonstrate, when v = c-1, the difference is %e.\n', d);

v = .0000001;
kr = m*c^2*(1.0/sqrt(1-v^2/c^2)-1);
kc = 1/2*m*v^2;
d = abs(kc-kr);

fprintf('The difference betwen K[r] and K[c] as v approaches 0 is 0.\n');
fprintf('To demonstrate, when v = .0000001, the difference is %e.\n', d);
fprintf('\n');

%% Part 3
kmph = [0 10 20 30 40 50 60 70 80 90 100];
mps = 1000/3600*kmph;
conversion_table = [kmph; mps];
fprintf('km/h    m/h\n');
fprintf('%6.2f %6.2f\n', conversion_table);
fprintf('\n');

%% Part 4
n = input('Enter a number: ');
mat = diag([1:n].^2) - diag(ones(1, n-1), 1) + diag(repmat(exp(1), 1, n-1).^[1:n-1], -1);
disp(mat);
fprintf('\n');

%% Part 5
mat = rand(3)
s = sum(transpose(mat))
mat = rand(3) ./ transpose(repmat(s, length(mat), 1));
disp(mat)
