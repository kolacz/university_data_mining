d = 100;
N = 100;
M = 100;
k = 3;

X = rand(d,N);
Y = rand(d,M);

X2 = sum(X.^2);
Y2 = sum(Y.^2);
XY = X' * Y;

H = zeros(k,N);
H

for i = 1:N
    min = X2(i) + Y2(1) - 2*XY(i,1);
    H(1,i)=1;
    for j = 2:M
        tmp = X2(i) + Y2(j) - 2*XY(i,j); %cza zrobiæ ³ajla
        if tmp <= min
            min = tmp;
            H(1,i) = j;
        end;
    end;
end;