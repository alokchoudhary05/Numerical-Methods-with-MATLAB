%% SIMPSON'S RULE
% f(x) = 2-x+ln(x)

% clc; close all; clear all;
% 
% a = 1;
% b = 2;
% h = (b-a)/2;
% f = @(x)2-x+log(x);
% trueval = (b-b^2/2+b*log(b))-(a-a^2/2+a*log(a));
% int_simp = h/3*(f(a) + 4*f(a+h) + f(a+2*h));
% err_simp = abs(trueval - int_simp);


%% SIMPSON'S Composite Rule
clc; close all; clear all;

a = 0;
b = 1;
f = @(x) 1/(1+x^2);
% trueval = integral(f,a,b);
n = input('Enter no. of sub-intervals n: ');
h = (b-a)/n;
if rem(n,2) == 1
    fprintf('\n Enter valid n!!!');
    n = input('Enter n as an even number');
end
s_odd = 0;
s_even = 0;

for k = 1:1:n-1
    x(k) = a+k*h;     %x_1 = a+h, x_2= a+2h
    y(k) = f(x(k));
    if rem(k,2) == 1
        s_odd = s_odd + y(k);
    else
        s_even = s_even + y(k);
    end
end
sum = (h/3)*(f(a) + f(b) +4*s_odd + 2*s_even)
