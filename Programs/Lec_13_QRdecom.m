clc; clear all; close all;
%% QR De Composition

A = [1,-1,4; 1,4,-2; 1,4,2; 1,-1,0];
[m,n] = size(A);
Q = zeros(m,n);
Q(:,1) = A(:,1)/norm(A(:,1));
for i = 2:n
    Q(:,i) = A(:,i);
    for j = 1:i-1
        Q(:,i) = Q(:,i) - (Q(:,j)'*Q(:,i))*Q(:,j);
    end
        Q(:,i) = Q(:,i)/norm(Q(:,i));
end
disp(Q)
%R = Q'*A;

% R
R = zeros(n);
for i = 1:n
    for j = i:n
        R(i,j) = A(:,j)'*Q(:,i)
    end
end


%% Inbuilt QR De Composition
% clc; clear all; close all;
% A = [12,-51,4; 6,167,-68; -4,24,-41];
% [Q1,R1] = qr(A)

%% Cholisky De composition
% A = [4,10,8;10,26,26;8,26,61];
% U = chol(A)
% U'*U