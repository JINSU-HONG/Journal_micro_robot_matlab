clear
clc
A = rand(3,8);

b = [1;2;3];

x = cadzow(A,b);

A*x;

k = A'*(A*A')^-1*b;

max(abs(x));
max(abs(k));

% A =  [-6 4 2 -8 5 -1 6 3
%     7 -3 9 5 -9 8 7 -4
%     9 7 -5 2 7 0 1 8
%     9 -3 2 4 0 3 0 1];
% b1 = [1,0,0,0]';
% b2 = [0,1,0,0]';
% b3 = [1/sqrt(2),1/sqrt(2),0,0]';
% x1 = cadzow(A,b1)
% x2 = cadzow(A,b2)
% x3 = cadzow(A,b3)
% x3_den = 1/sqrt(2)*(x1+x2)

A =  [-6 4 2 -8 5 -1 6 3
    7 -3 9 5 -9 8 7 -4
    9 7 -5 2 7 0 1 8];


b1 = [1,0,0]';
b2 = [0,1,0]';
b3 = [1/sqrt(2),1/sqrt(2),0]';
x1 = cadzow(A,b1);
x2 = cadzow(A,b2);
x3 = cadzow(A,b3);
x3_den = 1/sqrt(2)*(x1+x2);

A*x3;
A*x3_den;
x1;
x1_min = A'*(A*A')^-1*b1;

x = rand(3,1);

y = cadzow(A,x)
