function no_threat = queen_check(board)
no_threat = true;

% If no queens or one queen (no threat)
if length(find(board == 1)) <= 1
    return;
end

[~, cols] = size(board);

for index = 1:cols
    if length(find(board(:,index) == 1)') > 1 || ...
            length(find(board(index,:) == 1)) > 1;
        no_threat = false;
        return;
    end
end

for index = -cols:cols
    if sum(diag(board, index)) > 1 || sum(diag(flip(board),index)) > 1
        no_threat = false;
        return;
    end
end