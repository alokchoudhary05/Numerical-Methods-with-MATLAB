clc
a=5;
b=2;
sum=a+b;

A = [1 2 0; 0 1 2; 3 2 1];
B = [1 1 2; 5 2 1; 0 0 1];
C = A*B;
D = A.*B;
F = inv(A);

% To find inverse of B
G=inv(B);

a=[1 5 7 2];
b=[5 8 9 2];
% Find sum of above vector and a*b' and a*a'
add=a+b;
x=a*b';
y=a*a';







