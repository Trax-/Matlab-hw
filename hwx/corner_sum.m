function s = corner_sum(M)
s = sum(M(1,1) + M(1,end) + M(end,1) + M(end,end));