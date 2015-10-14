function censored = censor(txt, word)

counter = 0;

expression = strcat('.*(', word, ').*');

temp = regexprep(txt, expression, '');

for idx = 1:length(temp)
    if ~strcmp(temp(idx), '')
        counter = counter + 1;
        censored(counter) = temp(idx);
    end
end
if counter
    censored = cell(censored);
else
    censored = cell(0)
end