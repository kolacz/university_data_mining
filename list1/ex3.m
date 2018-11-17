%zad 3

%a)
d = 100;
x = 100* rand(d,1);
y = 200* rand(d,1);
w = 50 * rand(d,1);

len = sqrt( sum ( x .* x) ) ;
sr  = ( x' * w ) / sum(w);
dis = sqrt(sum((x - y).^2));
dot = x' * y;

%b)

N = 1000;
X = 200*rand(d,N);
M1 = sqrt(sum(X .* X))'
M2 = ((X' * w)/sum(w));
M3 = sqrt(sum((X - repmat(y,1,1000)).^2))';
M4 = (X' * y);