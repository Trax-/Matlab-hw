function b = divvy(A, k)
b = A
b(mod(A, k) ~= 0) = A(mod(A, k) ~= 0) * k