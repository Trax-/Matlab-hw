function out = neighbor(v)
if ~isvector(v) || length(v) < 2
    out = [];
else
    for index = 1:length(v)- 1
        out(index) = abs(v(index + 1) - v(index));
    end
end