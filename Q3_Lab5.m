p = (1:1:10)';                         % build vector of x -values
T = [222;227;223;233;244;253;260;266;270;266]; % build vector of y -values
X = [ones(size(p)),p,p.^2,p.^3];             % build the matrix X for linear model
z = X'*T;                         % right hand side of the Normal Equations
S = X'*X;                         % Left hand side of the Normal Equations
U = chol(S);                      % Cholesky decomposition
w = U'\z;  %solve the normal equations using the Cholesky decomposition
c = U\w
plot(p,T,'o')   % plot the data points
q = 1:0.1:10;    % define a vector for plotting the linear function
fit = c(1)+c(2)*q+c(3)*q.^2+c(4)*q.^3;  %define the linear fit 
hold on   
plot(q,fit,'r');  % plot the linear fit together with the data points
hold off

c = X\T
c = c([4:-1:1]);
q = 1:0.1:10;
z = polyval(c,q);
figure
plot(q,z,p,T,'o');

% Q3_Lab5
% 
% c =
% 
%    2.3023e+02
%   -1.0309e+01
%    3.7302e+00
%   -2.3388e-01
