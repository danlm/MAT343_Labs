% %Setup
% A = imread('cauchybw.jpg');
% B = double(A(:,:,1))+1;
% B = B/256;
% [U S V] = svd(B);
% 
% %Q1
% size(U)
% size(S)
% size(V)
%
% %Q2
% rank1 = S(1,1)*U(:,1)*V(:,1)';
% rank(rank1)
% C = zeros(size(A));
% C(:,:,1) = rank1;
% C(:,:,2) = rank1;
% C(:,:,3) = rank1;
% C = max(0,min(1,C));
% image(C)
rank10 = zeros(size(A(:,:,1)));
for i=1:40
    rank10 = rank10+S(i,i)*U(:,i)*V(:,i)';
end
rank(rank10)
C = zeros(size(A));
C(:,:,1) = rank10;
C(:,:,2) = rank10;
C(:,:,3) = rank10;
C = max(0,min(1,C));
image(C)