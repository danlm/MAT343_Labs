function C = columnproduct(A,B)
% The command columnproduct(A,B) computes the product
% of the matrices A and B by column.
[m,n] = size(A); % determine the dimension of A
[p,q] = size(B); % determine the dimension of B
if (p==n) % check the dimensions
    C = zeros(m,q); % initialize the matrix C
    for i = 1:q
    C(:,i) = A*B(:,i);
    end
else
    disp('dimensions do not match')
    C = [];
end
end


