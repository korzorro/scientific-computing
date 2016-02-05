#!/usr/bin/octave

%% Part 1
a = 1/15+sind(45)-4*pi;
b = sqrt(log(9)/log(3) + exp(1)^(9*i));
c = (45+7/5)/(factorial(3)+6*pi);

fprintf('a = %f\n', a);
fprintf('b = %f\n', b);
fprintf('c = %f\n', c);

%% Part 2
m = input('Enter a mass in kg: ');
v = input('Enter a velocity in m/s: ');
c = 3.0e8;

% a
kr = m*c^2*(1.0/sqrt(1-v^2/c^2)-1);
fprintf('Relativistic Kinetic Energy: %.6e\n', kr);

% b
kc = 1/2*m*v^2;
fprintf('Classical Kinetic Energy: %.6e\n', kc);

% c
d = abs(kc-kr);
fprintf('Absolute Difference: %.6e\n', d);

% d
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
fprintf('km/h   m/h\n');
fprintf('%5.2f %5.2f\n', conversion_table);
