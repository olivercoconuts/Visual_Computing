function [X2aligned, R, t] = rigidalignment(X1, X2)
X1c = X1 - repmat(mean(X1,2),1,size(X1,2));
X2c = X2 - repmat(mean(X2,2),1,size(X2,2));
H = X2c' * X1c;
[U,S,V] = svd(H);
R = V*U';
t = mean(X1,2) - R*mean(X2,2);
X2aligned = R*X2 + repmat(t,1,size(X2,2));
