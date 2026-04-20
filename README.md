# Projectile Motion Simulator
Simulates the path of a projectile under gravity in Matlab. You can enter a speed and angle, get back the trajectory, max height, range, and flight time. Right now this is only the start, wait for more!

I decided to add a section describing the physics and what I have written in detail. Both for myself to go back to, and for people interested in the topic.
A projectile launched at a speed 'v0' and an angle 'θ' (for now) is assumed to have no other forces outside of gravity affecting it (will change) ==> horizontal and vertical motion are completely independent.

The launch velocity is split into two components:
vx = v0 · cos(θ) horizontal — constant the entire flight
vy = v0 · sin(θ) vertical — slows down, stops, falls back
From there, position at any time t is:
x(t) = vx · t
y(t) = vy · t - (1/2) · g · t^2
Key values derived from those equations:
Flight time => t = 2·vy / g (solve y = 0)
Max height => H = vy^2 / 2g (when vertical velocity = 0)
Range => R = vx · t_flight (x at landing)

## Code Breakdown
g = 9.81 gravitational acceleration (m/s^2)
v0, angle_deg = your inputs
deg2rad(angle_deg) - converts degrees to radians for cos/sin
vx0, vy0 - horizontal and vertical velocity components
t_flight = (2 * vy0) / g total time in the air
t = linspace(0, t_flight, 1000) 1000 time steps from 0 to landing
x = vx0 * t horizontal position at each time step
y = vy0 * t - 0.5 * g * t.^2 vertical position at each time step
(.^ means apply ^ to every element in t)
max_height = (vy0^2) / (2*g) peak height formula
range = vx0 * t_flight total horizontal distance
plot(x, y) draws the trajectory using all 1000 points
