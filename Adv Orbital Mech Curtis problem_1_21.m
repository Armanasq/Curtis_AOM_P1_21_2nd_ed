%% Orbital Mechanics for Engineering Students (Second Edition)
% Howard D. Curtis
% page 58
function problem_1_21

x0 = 1; 
y0 = 0; 
z0 = 0;
f0 = [x0; y0; z0];
t0 = 0; 
tf = 20;
[t, f] = ode45(@rates, [t0 tf], f0);
output
return
function dydt = rates(t, f)
x = f(1);
y = f(2);
z = f(3);
Dx = -y/2 + z/2;
Dy = x/2 - z/sqrt(2);
Dz = -x/2 + y/sqrt(2);
dydt = [Dx; Dy; Dz];
end
function output
fprintf('\n---------------------------------------------------\n')
fprintf('\n Numerical solution of the system of differential')
fprintf('\n equations\n')
fprintf('\n Dx + y/2 - z/2 = 0')
fprintf('\n -x/2 + Dy + z/sqrt(2) = 0')
fprintf('\n x/2 - y/sqrt(2) + Dz = 0\n')
fprintf('\n x(%g) = %g\n', t(end), f(end,1))
fprintf('\n y(%g) = %g\n', t(end), f(end,2))
fprintf('\n z(%g) = %g\n', t(end), f(end,3))
fprintf('\n---------------------------------------------------\n\n')
end %output
end %problem_1_29
