d = 100;
N = 10000;
M = 1000;

tic;
X = rand(d,N);
Y = rand(d,M);

X2 = sum(X.^2);
Y2 = sum(Y.^2);
XY = X' * Y;

D = ones(N,M);

for i = 1:N
    for j = 1:M
        D(i,j) = sqrt(X2(i)+Y2(j)-2*XY(i,j));
    end;
end;
toc;