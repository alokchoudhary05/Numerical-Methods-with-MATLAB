% Newton Forward Difference Formula

clc; clear all; close all;

% x = [45 50 55 60];
% y = [0.7071 0.7660 0.8192 0.8660];
% X = input('Enter the value of X = '); % X is any number
% n = length(x); %n=4
% D = zeros(n,n); %zero matrix of order 4
% D(:,1) = y'; %1st column of D
% for j = 2:n
%     for i = 1:n-j+1                      %n-j+1 = 3 2
%         D(i,j) = D(i+1,j-1) - D(i,j-1);  %y_1-y_0  D(2,1)-D(1,1)   D(3,1)-D(2,1)
%     end
% end
% h = x(2)-x(1);
% u = (X - x(1))/h;
% A = y(1);
% G = u;
% for k = 1:n-1
%     A = A +G*D(1,k+1);  %y(1)+uD(1,2) + u(u-1)/2 D(1,3)   u(u-1)/2 = u* (u-1)/2 u(u-1)(u-2)/3!
%     G = (u-k)/(k+1)*G; %G = (u-1)/2*u
% end


% Enter X value and then write A then enter



% Task
% x = 1:1:6
% y = 10 20 25 30 35 40 find X = 28,32,37
%solution

x = 1:1:6;
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