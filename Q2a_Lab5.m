dat = load('co2.dat');
year = dat(:,1);
conc= dat(:,2);
X = [ones(size(year)),year];             % build the matrix X for linear model
z = X'*conc;                         % right hand side of the Normal Equations
S = X'*X;                         % Left hand side of the Normal Equations
U = chol(S);                      % Cholesky decomposition
w = U'\z;  %solve the normal equations using the Cholesky decomposition
c = U\w
plot(year,conc,'o') % plot the data points
q = year;    % define a vector for plotting the linear function
fit = c(1)+c(2)*q;  %define the linear fit 
hold on   
plot(q,fit,'k', 'linewidth',2);  % plot the linear fit together with the data points
axis tight
hold off


% Q2a_Lab5
% 
% c =
% 
%   -2.4718e+03
%    1.4204e+00
