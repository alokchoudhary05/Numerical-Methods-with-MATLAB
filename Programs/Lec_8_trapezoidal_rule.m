% Trapezoidal Rule
% f(x) = 2-x+ln(x)

%clc; close all; clear all;

%a = 1;
%h = 1;
%b = a+h;
%f = @(x)2-x+log(x);
%f = @(x)cos(x);
%trueval = integral(f,a,b);
% tureval = (b-b^2/2+b*log(b))-(a-a^2/2+a*log(a));

%% Trapezoidal Rule
%h = b-a;
%int_trap = h/2*(f(a)+f(b));
%int_trap = h/2*(FunInt(a)+FunInt(b));
%err_trap = abs(trueval - int_trap);
%-------------------------------------------------------------------------------------------------------
% %% MATLAB Function
%

%x = linspace(1,2,2);
%f = FunInt(x);
%int_trap = trapz(x,y);
%err_trap = abs(trueval - int_trap);






% Composite trapezoidal rule
clc; close all; clear all;
a = 1;
b = 2;
n = 10;
h = (b-a)/n;
f = @(x)cos(x);
i = 1:1:n-1
S = f(a+i.*h);
int_trap = (h./2)*(f(a)+2.*sum(S) +f(b))
trueval = cos(1) - cos(2);
err_trap = abs(tureval - int_trap)

