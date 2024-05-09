clc; clear all; close all;

%% LU Decomposition

A = [2 4 -6;1 5 3;1 3 2];
B = [-4;10;5];
N = length(A);
L = zeros(N,N);
U = zeros(N,N);
for s= 1:N
    L(s,s)=1;
end
U(1,:)= A(1,:);
L(:,1)= A(:,1)/U(1,1);
for i=2:N
    for j=1:N
        U(i,j)=A(i,j)-L(i,1:i-1)*U(1:i-1, j);
    end
    for k=i+1:N
        L(k,i)= (A(k,i)-L(k,1:i-1)*U(1:i-1, i))/U(i,i);
    end
end

% run "L,U,L*U"

% Forward Subtitution

Y = zeros(N,1);
Y(1) = B(1)/L(1,1);
for i=2:N
    Y(i)=(B(i)-L(i,1:i-1)*Y(1:i-1))/L(i,i);
end
X = zeros(N,1);
X(N)= Y(N)/U(N,N);
for k= N-1: -1:1
    X(k)= (Y(k)-U(k,k+1:N)*X(k+1:N))/U(k,k);
end

% run X,Y,L,U

%% Using Gauss Elimation
clc; clear all; close all;
A = [2 4 -6;1 5 3;1 3 2];
B = [-4;10;5];
X = [A B];
for i = 1: size(X,1)     %size(X,1)=number of rows of X
    for j = i+1: size(X,1)
        key1 = X(j,i)./X(i,i);
        X(j,:)=X(j,:)-key1.*X(i,:);
    end
end
x = zeros(1, size(A,2));
for i= size(X,1):-1:1  % back substitution
    gg = sum(X(i,i+1:end-1).*x(i+1:end));
    x(i)= (X(i,end)-gg)./X(i,i);
end

% run x 

