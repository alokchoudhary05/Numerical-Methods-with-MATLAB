% Newton Backward Difference Formula

clc; clear all; close all;

x = [2 3 4 5 6];
y = [4 7 8 11 15];
X = input('Enter the value of X = '); % X is any number
n = length(x); %n=4
D = zeros(n,n); %zero matrix of order 4
D(:,1) = y'; %1st column of D
for j = 2:n
    for i = j:n                      
        D(i,j) = D(i,j-1) - D(i-1,j-1);  %D(2,2)=D(2,1)-D(1,1)   D(3,2)=D(3,1)-D(2,1)
    end
end
h = x(2)-x(1);
u = (X - x(end))/h;
A = y(1);
G = u;
for k = 1:n-1
    A = A +G*D(1,k+1);  %y(1)+uD(1,2) + u(u-1)/2 D(1,3)   u(u-1)/2 = u* (u-1)/2 u(u-1)(u-2)/3!
    G = (u-k)/(k+1)*G; %G = (u-1)/2*u
end


% Enter X value and then write D,A then enter