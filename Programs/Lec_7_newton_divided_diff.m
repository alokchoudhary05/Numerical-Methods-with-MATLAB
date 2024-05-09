% Newton Divided Difference Formula

clc; clear all; close all;

x = [0 1 2 4 5 6];
y = [1 14 15 5 6 19];
X = input('Enter the value of X = '); % X is any number
n = size(x,2); %n=4
D = zeros(n,n); 
D(:,1) = y'; %1st column of D
for j = 2:n
    for i = 1:n-j+1                      
        num = D(i+1,j-1) - D(i,j-1);
        den = x(i+j-1) - x(i);
        D(i,j) = num./den;
    end
end

for i = 1:size(x,2)-1
    P(i) = prod(X-x(:,1:i))*D(1,i+1);  %P(2) = (X-x_1)(X-x_2)D(1,3)
end
Y = y(1) + sum(P);
array2table(D)  % to print the table with heading on each column

% For answer enter X than D than Y.

%x = [1:1:6];
%y = [1 8 27 65 123 208];