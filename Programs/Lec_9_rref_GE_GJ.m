clc; clear all; close all;

%% RREF

A = [1 0 0;0 1 0;0 0 0];
B = [2 5 2;1 5 6;0 1 0];
C = rref(B);

%% Gauss Elemenation Method

A = [6 3 2; 6 4 3; 20 15 12];
b = [6; 0 ; 0];
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

%------------------Questions--------------------------------

A=[2 -2 3;1 2 -1;3 -1 2];
b=[2;3;1];
X = [A b];
for i= 1: size(X,1) 
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
disp('The value of x :');
disp(x);

%% Gauss Jordan
A=[2 -2 3;1 2 -1;3 -1 2];
b =[2;3;1];
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

%------------------Questions--------------------------------

A=[1 1 1; 2 -3 4; 3 4 5];
b =[9 ; 13 ; 40];
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