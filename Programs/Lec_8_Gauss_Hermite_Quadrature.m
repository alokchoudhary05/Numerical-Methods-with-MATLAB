%% Gauss Hermite Quadrature Formula

clc; close all; clear all;

sigma = 0.1;
f = @(x)(sqrt(2)*sigma*x +5)/sqrt(pi);

% Gauss-Hermite 2pt formula
% w = [(sqrt(pi))/2 (sqrt(pi))/2];
% x = [-1/sqrt(2) 1/sqrt(2)];
% I_2pt = w(1)*f(x(1)) + w(2)*f(x(2))

% Gauss-Hermite 3pt formula
w = [(sqrt(pi))/6 (2*sqrt(pi))/3 (sqrt(pi))/6];
x = [-sqrt(6)/2 0 sqrt(6)/2];
I_3pt = w(1)*f(x(1)) + w(2)*f(x(2)) + w(3)*f(x(3))