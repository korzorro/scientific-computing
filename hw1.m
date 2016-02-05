#!/usr/bin/octave

%% Part 1
a = 1/15+sind(45)-4*pi;
b = sqrt(log(9)/log(3) + e^(9*i));
c = (45+7/5)/(factorial(3)+6*pi);


%% Part 2
m = input('Enter a mass in kg: ');
v = input('Enter a velocity in m/s: ');
c = 3.0e8;

% a
kr = m*c^2*(1.0/sqrt(1-v^2/c^2)-1);

% b
kc = 1/2*m*v^2;

% c
dif = abs(kr-kc)

%d

