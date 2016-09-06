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
fit_l = c(1)+c(2)*q;  %define the linear fit 
hold on   
plot(q,fit_l,'k', 'linewidth',2);  % plot the linear fit together with the data points
axis tight

X = [ones(size(year)),year, year.^2];             % build the matrix X for quadratic model
z = X'*conc;                         % right hand side of the Normal Equations
S = X'*X;                         % Left hand side of the Normal Equations
U = chol(S);                      % Cholesky decomposition
w = U'\z;  %solve the normal equations using the Cholesky decomposition
c = U\w
fit_q = c(1)+c(2)*q+c(3)*(q.^2);  %define the quadratic fit
plot(q,fit_q,'r', 'linewidth',2);  % plot the linear fit together with the data points
legend('data points', 'linear fit', 'quadratic fit', 2);
axis tight
hold off


% Q2b_Lab5
% 
% c =
% 
%   -2.4718e+03
%    1.4204e+00
% 
% 
% c =
% 
%    4.4715e+04
%   -4.6174e+01
%    1.2000e-02
