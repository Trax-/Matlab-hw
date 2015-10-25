function bt = bell(n)

if n <= 0 || mod(n * 10, 10) ~= 0
    bt = [];
    return;
end

bt = zeros(n,n);

bell_numbers = [1, 1, 2, 5, 15, 52, 203, 877, 4140, 21147, 115975, 678570, 4213597, 27644437, 190899322, 1382958545, 10480142147, 82864869804, 682076806159, 5832742205057];

for row = 1:n
    bt(row, 1) = bell_numbers(row);
end

rows = n - 1;

for col = 2:n
    for row = 1:rows
        bt(row, col) = bt(row, col - 1) + bt(row + 1, col - 1);
    end
   rows = rows - 1;
end