function indices = large_elements(X)
indices = [];
for row = 1:size(X,1)
    for col = 1:size(X,2)
        if X(row, col) > row + col
            indices = [indices;row, col];
        end
    end
end