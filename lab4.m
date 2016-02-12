% Michael Korzon
% Scientific Computing
% Dr. Szczurek
% Lab 4

%% Problem 1

% 1-1
person1 = struct();
person1.name = 'Michael';
person1.rank = 5;
person1.serial_number = 'a54d1921';
disp(person1);

% 1-2
person2 = struct('name', 'Michael', 
		 'rank', 5, 
		 'serial_number', 'a54d1921');
disp(person2);

% 1-3
person2.serial_number = char(person2.serial_number + '1');
disp(person2.serial_number);

%% Problem 2

% 2-a
cells = {{exp(1), 'Exponential'},
	 {rand(3), @(t) log(cos(t) + 1)}};

% 2-b
product = cells{1}{2} * cells{1}{1};
disp(product)

% 2-c
a = cells{2}{2}(pi/2);
disp(a)

%% Part 3

% 1-a
f = @(x, y) sin(x+y) .* cos(x-y);

% 1-b
g = @(x) f(x, 1);

% 1-c
limits = [-5 5];
fplot(g, limits);


%% Part 4

% 1-a
zebra = 'ZEBRA';

% 1-b
zebra = char(mod(zebra+3-65, 26) + 65)
