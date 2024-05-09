% Interpolation
%Time's = 0 1 2 3 4 5
%Temp 1 = 0 20 60 68 77

clc; clear all; close all;

%x = 0:5;
%y = [0 20 60 68 77 110];
% Interpolate to get tempreature at T=3.6s
%temp = interp1(x,y,3.6);
%temp1 = interp1(x,y,1.2);



% x is 0 1 2 3 and y is 1 0 1 12. 
% compute values at 1.2,2.6,3.1

%x = 0:3;
%y = [1 0 1 12];
%temp = interp1(x,y,1.2);
%temp1 = interp1(x,y,2.6);
%temp2 = interp1(x,y,3.1)

% Next

%a = 1:6;
%diff_a = diff(a);
%b = [1 3 15 7 4 16];
%diff_b = diff(b);
% % second order difference
%diff_a_2 = diff(a,2);
%diff_b_2 = diff(b,2);

% Question
%c = 2:1:10;
%diff_c = diff(c);
%diff_c_2 = diff(c,2);

% Question

%d = [3 -2 6 4 -8 13 -25];
%diff_d = diff(d);
%diff_d_2 = diff(d,2);





% Diff ploting
% Use diff command to find a derivative

% Define a function f(x)=x^3

x = 0:1:10;
y = x.^3;


%plot the function
%figure(1);
%plot(x,y,'o');
%xlabel('x');
%ylabel('y');


% Find the derivative dy/dx
y_diff = diff(y)./diff(x);    % x_1 f(x_1) x_2 f(x_2)  f(x_2)-f(x_1)/x_2-x_1

%plot
figure(2)
plot(x(2:end),y_diff)
xlabel('dx')
ylabel('dy')

% Calculate analytical derivative
y_anl = 3.*x.^2;
hold on
plot(x,y_anl,'ro')
legend('numerical','analytical')

% Plot the function and the derivative
figure(3)
plot(x,y,'o',x(2:end),y_diff,'ro')

