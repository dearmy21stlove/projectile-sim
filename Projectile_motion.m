% PROJECTILE MOTION SIMULATOR v0.1
% Gravity only -> no air resistance.

clc
clear
% Constants
g = 9.81;
% Inputs
v0        = input('Initial speed (m/s): ');
angle_deg = input('Launch angle (degrees): ');

% Setup
angle_rad = deg2rad(angle_deg);
vx0 = v0 * cos(angle_rad);
vy0 = v0 * sin(angle_rad);

% Flight time
t_flight = (2 * vy0) / g;
t        = linspace(0, t_flight, 1000);
% Kinematics
x = vx0 * t;
y = vy0 * t - 0.5 * g * t.^2;

% Results
max_height = (vy0^2) / (2*g);      
range      = vx0 * t_flight;
disp(['Max height  : ', num2str(max_height), ' m'])
disp(['Range       : ', num2str(range),      ' m'])
disp(['Flight time : ', num2str(t_flight),   ' s'])
% Plot
figure;
plot(x, y, 'b-', 'LineWidth', 2);
xlabel('Distance (m)'); ylabel('Height (m)');
title('Projectile Motion v0.1'); grid on;

%Love21!
%dearmy21stlove