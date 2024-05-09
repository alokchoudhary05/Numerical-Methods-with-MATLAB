clc; clear all; close all;

% for index = vector 
%     commands;
% end


% for i = 1:5
%     i;
% end


% x = -2:2;
% for i = 1:length(x)
%     x(i)
% end


x = -2:2;
y = 1:4;
for i = 1:length(x)
    for j = 1:length(y)
        % if x(i)>0
        A(i,j) = x(i)+y(j);
        %end
    end
end