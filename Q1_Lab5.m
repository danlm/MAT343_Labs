x = [1:1:100]';% note the prime
y = randn(size(x));% a column vector of 100 standard normal values.
X = [ones(size(x)),x];             % build the matrix X for linear model
z = X'*y;                         % right hand side of the Normal Equations
S = X'*X;                         % Left hand side of the Normal Equations
U = chol(S);                      % Cholesky decomposition
w = U'\z;  %solve the normal equations using the Cholesky decomposition
c = U\w
plot(x,y,'.','MarkerSize',10)% plot the data points
q = 1:0.1:100;    % define a vector for plotting the linear function
fit = c(1)+c(2)*q;  %define the linear fit 
hold on   
plot(q,fit,'r');  % plot the linear fit together with the data points
hold off


% Q1_Lab5
% 
% c =
% 
%   -1.7961e-02
%    1.2145e-03