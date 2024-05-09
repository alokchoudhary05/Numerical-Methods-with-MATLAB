% Compute numerical differention formulae
% f(x) = x^2
% Calculate f'(x) at x = 1

clc; clear all; close all;

a = 1;
trueVal = 2*a;
h = 1.0e-4; %h = 0.0001
%h = 10.^[-1:-1:-5];

%Forward Diffrence Formula
fwdDiff = ((a+h)^2 - a^2)/h;
errFwd = abs(trueVal - fwdDiff);  % diffrence between actual value and approximate value of the derivative. 
disp(['Error in Fwd Diff: - ', num2str(errFwd)]);

%Central Difference formula
ctrDiff = ((a+h)^2 - (a-h)^2)/(2*h);
errCtr = abs(trueVal - ctrDiff);
disp(['Error in Ctr Diff: - ',num2str(errCtr)]);

%Backward Diffrence formula
bkdDiff = (a^2 - (a-h)^2)/h;
errBkd = abs(trueVal - bkdDiff);
disp(['Error in Bkd Diff: - ',num2str(errBkd)]);

% Second Diffrence formula 
numDiff = ((a+h)^3 - 2*a^3 + (a-h)^3)/h^2;
errNum = abs(trueVal - numDiff);
disp(['Second order Diff: - ',num2str(errNum)]);




% Try with 3*a^2

a = 1;
trueVal = 3*a^2;
h = 1.0e-4; %h = 0.0001
%h = 10.^[-1:-1:-5];

%Forward Diffrence Formula
fwdDiff = ((a+h)^2 - a^2)/h;
errFwd = abs(trueVal - fwdDiff);  % diffrence between actual value and approximate value of the derivative. 
disp(['Error in Fwd Diff: = ', num2str(errFwd)]);

%Central Difference formula
ctrDiff = ((a+h)^2 - (a-h)^2)/(2*h);
errCtr = abs(trueVal - ctrDiff);
disp(['Error in Ctr Diff: = ',num2str(errCtr)]);

%Backward Diffrence formula
bkdDiff = (a^2 - (a-h)^2)/h;
errBkd = abs(trueVal - bkdDiff);
disp(['Error in Bkd Diff: = ',num2str(errBkd)]);

% Second Diffrence formula 
numDiff = ((a+h)^3 - 2*a^3 + (a-h)^3)/h^2;
errNum = abs(trueVal - numDiff);
disp(['Second order Diff: = ',num2str(errNum)]);





