function coded = codeit(txt)
coded = blanks(length(txt));
normal = strcat('abcdefghijklmnopqrstuvwxyz',upper('abcdefghijklmnopqrstuvwxyz'));
backward = strcat('zyxwvutsrqponmlkjihgfedcba', upper('zyxwvutsrqponmlkjihgfedcba'));
for idx = 1:length(txt)
    if strfind(normal, txt(idx)) > 0
        coded(idx) = backward(strfind(normal, txt(idx)));
    else
        coded(idx) = txt(idx);
    end
end