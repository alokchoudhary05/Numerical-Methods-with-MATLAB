%% Question 1 
%clc; clear all; close all;
%trapezoidal rule
%f = @(x) exp(-x.^2);
%integralApproximation = trapz([0, 1], [f(0), f(1)]);


%% Question 2
%clc; clear all; close all;
% Composite trapezoidal rule
%a = 0; % start point
%b = pi; % end point
%n = 10; % number of subintervals
%h = (b-a)/n; % step size
%f = @(x) sin(x); % function to integrate
%x = a:h:b; % x values
%S = f(x(2:end-1)); % function values at interior points
%int_trap = (h/2)*(f(a) + 2*sum(S) + f(b)); % trapezoidal rule
%trueval = 2; % true value of the integral of sin(x) from 0 to pi
%err_trap = abs(trueval - int_trap); % error calculation

%% Question 3
%clc; clear all; close all;
% SIMPSON'S RULE
%a = 0;
%b = pi;
%n = 2;
%h = (b-a)/n;
%f = @(x) sin(x);
%trueval = 2; % The exact integral of sin(x) from 0 to pi is 2
%int_simp = h/3*(f(a) + 4*f(a+h) + f(b));
%err_simp = abs(trueval - int_simp);

%% Question 4
%clc; clear all; close all;
% SIMPSON'S Composite Rule

%a = 0;
%b = 1;
%f = @(x) exp(-x^2); % Corrected function as per the question
%n = input('Enter no. of sub-intervals n: ');
%h = (b-a)/n;
%if rem(n,2) == 1
%    fprintf('\n Enter valid n!!!');
%    n = input('Enter n as an even number');
%end
%s_odd = 0;
%s_even = 0;
%
%for k = 1:1:n-1
%    x(k) = a+k*h;     %x_1 = a+h, x_2= a+2h
%    y(k) = f(x(k));
%    if rem(k,2) == 1
%        s_odd = s_odd + y(k);
%    else
%        s_even = s_even + y(k);
%    end
%end
%sum = (h/3)*(f(a) + f(b) + 4*s_odd + 2*s_even);
%disp(['The integral approximation is ', num2str(sum)]);

%% Question 5
% % Gauss Legendre Quadrature
% clc; clear all; close all;
% 
% % Define the function
% f = @(x) log(x) + x - 1;
% 
% % Limits of integration
% a = 2;
% b = 4;
% 
% % True value of the integral for comparison
% trueval = integral(f, a, b);
% 
% % Linear transformation from [-1, 1] to [a, b]
% x = @(t) ((b-a)/2)*t + (b+a)/2;
% J = (b-a)/2;
% 
% % New integrand after transformation
% F = @(t) f(x(t)) * J;
% 
% % Gauss-Legendre 1-point formula
% I_1pt = 2 * F(0);
% err_1pt = abs(trueval - I_1pt);
% 
% % Gauss-Legendre 2-point formula
% I_2pt = F(-1/sqrt(3)) + F(1/sqrt(3));
% I_2pt = I_2pt * J;
% err_2pt = abs(trueval - I_2pt);
% 
% % Gauss-Legendre 3-point formula
% I_3pt = 5/9 * F(-sqrt(3/5)) + 8/9 * F(0) + 5/9 * F(sqrt(3/5));
% I_3pt = I_3pt * J;
% err_3pt = abs(trueval - I_3pt);
% 
% % Display the results
% fprintf('True value of the integral: %f\n', trueval)
% fprintf('Gauss-Legendre 1-point approximation: %f, Error: %f\n', I_1pt, err_1pt)
% fprintf('Gauss-Legendre 2-point approximation: %f, Error: %f\n', I_2pt, err_2pt)
% fprintf('Gauss-Legendre 3-point approximation: %f, Error: %f\n', I_3pt, err_3pt)


%% Question 6
% clc; clear all; close all;
% % Gauss Hermite Quadrature Formula
% sigma = 0.1; % Given standard deviation
% 
% % Function to integrate as per the question
% f = @(x) exp(-((sqrt(2)*sigma*x - mu).^2)/(2*sigma^2)) .* (x + 3) / sqrt(2*pi*sigma^2);
% 
% % Gauss-Hermite 1pt formula
% w = [sqrt(pi)];
% x = [0];
% I_1pt = w(1)*f(x(1));
% 
% % Gauss-Hermite 2pt formula
% w = [sqrt(pi)/2, sqrt(pi)/2];
% x = [-1/sqrt(2), 1/sqrt(2)];
% I_2pt = w(1)*f(x(1)) + w(2)*f(x(2));
% 
% % Gauss-Hermite 3pt formula
% w = [(sqrt(pi))/6 (2*sqrt(pi))/3 (sqrt(pi))/6];
% x = [-sqrt(3)/2 0 sqrt(3)/2];
% I_3pt = w(1)*f(x(1)) + w(2)*f(x(2)) + w(3)*f(x(3));
% 
% % Display the result
% disp(['The integral approximation for n=1 is: ', num2str(I_1pt)])
% disp(['The integral approximation for n=2 is: ', num2str(I_2pt)])
% disp(['The integral approximation for n=3 is: ', num2str(I_3pt)])


%% Alok Choudhary