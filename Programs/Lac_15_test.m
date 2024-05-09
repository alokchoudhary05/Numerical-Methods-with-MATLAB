clc; clear all; close all;

%% Question 1 
% Function definitions
fx = @(x) 3*x.^2 + 7;
gx = @(x) sin(x);

% Point at which to find the derivative
x0 = 1;

% Compute numerical derivatives using diff command
h = 0.0001; % step size
dfx = (fx(x0+h) - fx(x0))/h;
dgx = (gx(x0+h) - gx(x0))/h;

% Analytical derivatives
dfx_analytical = @(x) 6*x;
dgx_analytical = @(x) cos(x);

% Display the results
fprintf('The numerical derivative of f(x) = 3*x.^2 + 7 at x=%d is %f\n', x0, dfx);
fprintf('The numerical derivative of g(x) = sin(x)  at x=%d is %f\n', x0, dgx);

% Plot the results
x_values = linspace(0, 2*pi, 100);
plot(x_values, dfx_analytical(x_values), 'r', x_values, dgx_analytical(x_values), 'b');
legend('df(x)/dx', 'dg(x)/dx');
title('Comparison of Analytical Derivatives');
xlabel('x');
ylabel('Derivative');


%% Question 2
clc; clear all; close all;
x = [0, 1, 2, 3, 4];
y = [10 20 25 30 35 40];
X = input('Enter the value of X = '); % X is any number
n = length(x); %n=4
D = zeros(n,n); %zero matrix of order 4
D(:,1) = y'; %1st column of D
for j = 2:n
    for i = 1:n-j+1                      %n-j+1 = 3 2
        D(i,j) = D(i+1,j-1) - D(i,j-1);  %y_1-y_0  D(2,1)-D(1,1)   D(3,1)-D(2,1)
    end
end
h = x(2)-x(1);
u = (X - x(1))/h;
A = y(1);
G = u;
for k = 1:n-1
    A = A +G*D(1,k+1);  %y(1)+uD(1,2) + u(u-1)/2 D(1,3)   u(u-1)/2 = u* (u-1)/2 u(u-1)(u-2)/3!
    G = (u-k)/(k+1)*G; %G = (u-1)/2*u
end

% Display the estimated y value
print("The estimated value of y at x" , X, A);