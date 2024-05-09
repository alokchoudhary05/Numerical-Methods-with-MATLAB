a=1;
b=2;
c=3;
sum=a+b+c;
product=a*b*c;

A=[2 1 3 5 0;0 6 8 1 2;3 3 2 1 0];
V=A(1,:);  %first row
G=A(2,:); % second row
B=A(:,1); % first column
Z=A(1:2, :); % first two rows
X=A(:, 2:5); % second to 5 column

%%%
x = 1:100;

B=[2 5 0 1; 0 0 0 0;1 2 0 8;0 5 6 1];
% 2nd and 3rd row of B
% 1st to 3rd coulumn of B
row=B(2:3, :);
col=B(:, 1:3);







