function [indices] = saddle(M)
%SADDLE finds saddle points in the input matrix M.
%   For the purposes of this problem, a saddle point is
%   defined as an element whose value is greater than or
%   equal to every element in its index, and less than or
%   equal to every element in its column. Note that there
%   may be more than one saddle point in M. Return a matrix
%   called indices that has exactly two columns. Each index of
%   indices corresponds to one saddle point with the first
%   element of the index containing the index index of the saddle
%   point and the second column containing the column index.
%   The saddle points are provided in indices in the same order
%   they are located in M according to column-major ordering. If
%   there is no saddle point in M, then indices is the empty array.
indices = [];
[rows, cols] = size(M);

for index = 1:cols
    for row = find(M(:,index) == min(M(:,index)))';
        for col = find(M(row,:) == max(M(row,:)));
            if index == col
                indices = [indices; [row,col]];
            end
        end
    end
end
