clc; clear all; close all;
%% Gauss Elemenation Mothod

A = [2, -4, -2; 1, -1, 1; -4, 2, -3];
b = [6; 1; 11];
X = [A b];
for i= 1: size(X,1) %size(X,1)= number of rows of X, size(X,2)= numbaer of column of x
    for j= i+1 : size(X,1)
        key1= X(j,i)./X(i,i);
        X(j,:)= X(j,:)-key1.*X(i,:);
    end
end

% Back substitution
x = zeros(1, size(A, 2));
for i = size(X, 1):-1:1
    gg = sum(X(i, i+1:end-1) .* x(i+1:end));
    x(i) = (X(i, end) - gg)/ X(i, i);
end
disp(A);
disp('the value of x :');
disp(x);

%% Gauss Jordan
A=[1 1 1;0 2 5;2 5 -1];
b =[6;-4;27];
X=[A b];
for i=1:size(X,1)
    X(i,:)= X(i,:) ./X(i,i); % make diagonal entry 1
    for j = 1:size(X,1)
        if j~=i
            key1= X(j,i)./X(i,i);
     X(j,:)= X(j,:)- key1.*X(i,:); % applying elementry row operations
        end
    end
end

disp(X(:,end))


% ------------------------------------------
%% LU Decomposition
clc; clear all; close all;
% Define the matrix A
A = [4 -2 1;-2 4 -2;1 -2 3];

% Perform LU decomposition
[L, U] = lu(A);

% Display the results
disp('Matrix L:');
disp(L);
disp('Matrix U:');
disp(U);

