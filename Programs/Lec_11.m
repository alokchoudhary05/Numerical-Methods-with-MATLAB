clear all
clc
close all

% function [L, U] = func(A)
    % This function decomposes a matrix A into L and U,
    % where A is m x n matrix.
    % L will be a lower triangular matrix of size m x m,
    % U will be an upper triangular matrix of size m x n.
    
A = [1 2 5; 4 5 7; 9 0 0]; % Assuming you want to fill the missing values with zeros

% function [L, U] = func(A)
    [m, n] = size(A);
    L = eye(m);
    U = zeros(m, n);

    for k = 1:min(m,n)
        % For each column in A, perform elimination below the diagonal
        for i = k+1:m
            % Calculate the multiplier for the elementary operation
            L(i,k) = A(i,k) / A(k,k);
            % Perform the row operation on the rest of the row
            A(i,k+1:n) = A(i,k+1:n) - L(i,k) * A(k,k+1:n);
        end
        % Copy the modified column into U
        U(k,:) = A(k,:);
    end
    
    % For non-square matrices, the remaining rows of A are placed in U
    if m > n 
        U(n+1:m, :) = A(n+1:m,:);
    end
    