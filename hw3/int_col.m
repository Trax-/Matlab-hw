function [v] = int_col(n)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
v = (n:-1:1)';
if mod(n, 2) ~= 0;
    temp = v((n+1)/2,1);
    v((n + 1) / 2, 1) = v((n + 1) / 2 + 1, 1);
    v((n + 1) / 2 + 1) = temp;
end
end

