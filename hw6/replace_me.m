function w = replace_me(v, a, b, c)
w = [];
if nargin < 3
    b = 0;
    c = 0;
elseif nargin < 4
    c = b;
end

for index = 1:length(v)
    if v(index) ~= a
        w(length(w) + 1) = v(index);
    else
        w(length(w) + 1) = b;
        w(length(w) + 1) = c;
    end
end
    