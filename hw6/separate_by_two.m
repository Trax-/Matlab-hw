function [row1, row2] = separate_by_two(A)
row1 = A(mod(A, 2) == 0)';
row2 = A(mod(A, 2) > 0)';