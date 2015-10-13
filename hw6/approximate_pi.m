function [value, k] = approximate_pi(delta)
k = 0;
value = 0;
while abs(value - pi) > delta
    value = value + sqrt(12) ./ ((2 * k + 1) .* (-3).^k);
    k = k + 1;
end
k = k - 1;