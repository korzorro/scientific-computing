% Michael Korzon
% 70-315 Scientific Computing
% Spring 2016
% Homework 4


function collisions = collide(sim_time, num_objects, step_dist)
% Calculates the number of colisions in a 100x100 meter 2D space given :
% sim_time - how many seconds of time to simulate
% num_objects - how many particles to simulate
% step_dist - number of meters that each particle will move in one second
% A collision occurs when particles are within 2 meters from each other
  collision_threshold = 2;
  xrange = [0, 100];
  yrange = [0, 100];
  particles = init_particles(num_objects, xrange, yrange);
  
  collisions = 0;
  for a = 1:sim_time
    for b = 1:length(particles)
      particles{b} = move_particle(particles{b}, step_dist, xrange, yrange);
    end
    collisions += count_collisions(particles);
  end
  
  function count = count_collisions(particles)
    count = 0;
    for a = 1:length(particles)-1
      for b = a+1:length(particles)
	if is_collision(particles{a}, particles{b}, collision_threshold)
	  count = count + 1;
	end
      end
    end
  end
  
  function p = init_particles(num_objects, xrange, yrange)
    p = {};
    for a = 1:num_objects
      x = xrange(1) + rand()*xrange(2);
      y = yrange(1) + rand()*yrange(2);
      p{a} = [x y];
    end
  end
  
  function particle = move_particle(particle, step_dist, xrange, yrange)
    rand_angle = 2*pi*rand;
    x = particle(1) + cos(rand_angle) * step_dist;
    if x < xrange(1)
       x = xrange(1);
    end
    if x > xrange(2)
      x = xrange(2);
    end
    y = particle(2) + sin(rand_angle) * step_dist;
    if y < yrange(1)
       y = yrange(1);
    end
    if y > yrange(2)
      y = yrange(2);
    end
    particle = [x y];
  end
  
  function x = is_collision(particle1, particle2, collision_threshold)
    if distance(particle1, particle2) < collision_threshold
      x = true;
    else
      x = false;
    end
  end

  function d = distance(a, b)
    d = sqrt(sum((a - b).^2));
  end
end
