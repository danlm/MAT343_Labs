x = [2.4;3.6;3.6;4.1;4.7;5.3];       % build vector of x -values
y = [33.8;34.7;35.5;36.0;37.5;38.1]; % build vector of y -values
X = [ones(size(x)),x];             % build the matrix X for linear model
z = X'*y;                         % right hand side of the Normal Equations
S = X'*X;                         % Left hand side of the Normal Equations
U = chol(S);                      % Cholesky decomposition
w = U'\z;  %solve the normal equations using the Cholesky decomposition
c = U\w
plot(x,y,'o')   % plot the data points
q = 2:0.1:6;    % define a vector for plotting the linear function
fit = c(1)+c(2)*q;  %define the linear fit 
hold on   
plot(q,fit,'r');  % plot the linear fit together with the data points
hold off

