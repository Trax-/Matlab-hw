function n = one_per_n(x)
n = 1;
temp = 1;
while temp < x
    n = n + 1;
    temp = temp + 1/n;
    if n > 10000
        n = -1;
        break;
    end
end

