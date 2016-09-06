function y = myrowproduct(A,x)
% The command myrowproduct(A,x) computes the product
% of the matrix A and the vector x by row.
[m,n] = size(A); % determine the dimension of A
[p,q] = size(x); % determine the dimension of x
if (q==1&&p==n) % check the dimensions
    y = zeros(m,1); % initialize the vector y
    for i = 1:m
    y(i) = A(i,:)*x;
    end
else
    disp('dimensions do not match')
    y = [];
end
end


