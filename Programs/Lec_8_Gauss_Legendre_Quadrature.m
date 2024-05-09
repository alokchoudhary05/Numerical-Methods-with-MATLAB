%% Gauss Legendre Quadrature
%  f(x) = 2-x+ln(x)

clc; clear all; close all;

a = 2;
b = 3;
f = @(x)2-x+log(x);
trueval = integral(f,a,b);
x = @(t) ((b-1)/2)*t + (b+a)/2; % linear transformation
J = (b-a)/2;
F = @(t) f(x(t))*J; % New Integrand

% Gauss-Legendre 2pt formula
I_2pt = F(-1/sqrt(3)) + F(1/sqrt(3));
err_2pt = abs(trueval - I_2pt);

% Gauss-Legendre 3pt formula
I_3pt = 5/9*F(-sqrt(3/5)) + 8/9*F(0) + 5/9*F(sqrt(3/5));
err_3pt = abs(tureval - I_3pt)

