function board = checkerboard(n, m)
a = zeros(n, m);
a(1:2:end, 1:2:end) = 1;
a(2:2:end, 2:2:end) = 1;
board = a;