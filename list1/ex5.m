d = 100;
N = 100;
M = 100;

X = rand(d,N);
Y = rand(d,M);

X2 = sum(X.^2);
Y2 = sum(Y.^2);
XY = X' * Y;

h = zeros(1,N);

for i = 1:N
    min = X2(i) + Y2(1) - 2*XY(i,1);
    h(i)=1;
    for j = 2:M
        tmp = X2(i) + Y2(j) - 2*XY(i,j);
        if tmp <= min
            min = tmp;
            h(i) = j;
        end;
    end;
end;
