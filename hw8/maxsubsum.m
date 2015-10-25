function [row, col, numrows, numcols, summa] = maxsubsum(A)
[dimrows, dimcols] = size(A);
sub_old = A(1,1);

for i = 1:dimrows
    for j = 1:dimcols
        for ii = 1:dimrows
            for jj = 1:dimcols
                sub_new = A(i:ii, j:jj);
                if sum(sub_new(:)) >= sum(sub_old(:))
                    sub_old = sub_new;
                    row = i;
                    col = j;
                    numrows = (ii - i) + 1;
                    numcols = (jj - j) + 1;
                    summa = sum(sub_old(:));
                end
            end
        end
    end
end
            