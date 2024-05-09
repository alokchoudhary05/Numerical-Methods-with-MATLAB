clc; close all; clear all;
%% Question 2 : Chlesky Method of A

% A = [4,10,8; 10,26,26; 8,26,61];
% A = [4,1,2; 1,3,1; 2,1,5];

% A = [4,10,8; 10,26,26; 8,26,61];
% for i = 1:size(A,1)
%     for j = i+1:size(A,1)
%         coeff = A(j,i)./A(i,i);
%         A(j,:) = A(j,:) - coeff.*A(i,:);
%     end
% end
% 
% D = diag(diag(A));
% U = zeros(size(A));
% for i = 1:size(A,1)
%     for j = i:size(A,2)
%         U(i,j) = A(i,j)/D(i,i);
%     end
% end
% 
% sqrtD = sqrt(diag(D));
% sqrtD = diag(sqrtD);
% Unew = sqrtD*U;
% Lnew = Unew';
% 
% b = [-20;-43;192]';
% y = Lnew\b;
% x = Unew\y; 

%% Question 3 :
% QR De Composition

% A = [12 -51 4; 6 167 -68; -4 24 -41];
% [m,n] = size(A);
% Q = zeros(m,n);
% Q(:,1) = A(:,1)/norm(A(:,1));
% for i = 2:n
%      Q(:,i) = A(:,i);
%      for j = 1:i-1
%          Q(:,i) = Q(:,i) - (Q(:,j)'*Q(:,i))*Q(:,j);
%      end
%          Q(:,i) = Q(:,i)/norm(Q(:,i));
%  end
% 
% %R = Q'*A;
% 
% % R
% R = zeros(n);
% for i = 1:n
%      for j = i:n
%          R(i,j) = A(:,j)'*Q(:,i);
%      end
%  end
% disp('Q = ');
% disp(Q);
% disp('R = ');
% disp(R);

%% Question 4: 

% A = [1 1 0; 1 0 1; 0 1 1];
% [m, n] = size(A);
% Q = zeros(m, n);
% R = zeros(n, n);
% 
% for j = 1:n
%     v = A(:, j);
%     for i = 1:j-1
%         R(i, j) = Q(:, i)' * A(:, j);
%         v = v - R(i, j) * Q(:, i);
%     end
%     R(j, j) = norm(v);
%     Q(:, j) = v / R(j, j);
% end
% 
% disp("Q:");
% disp(Q);
% disp("R:");
% disp(R);
