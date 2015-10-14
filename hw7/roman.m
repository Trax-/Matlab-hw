function arabic = roman(numerals)

arabic = uint8(0);
    
if length(numerals) > 5 || ...
    ~isempty(regexp(numerals, '[^IXV]')) || ...
    ~isempty(regexpi(numerals, '[LCDM]|VX|VV|IIV', 'once')) || ... 
    length(strfind(numerals, 'X')) > 2 || ...
    (length(numerals) == 3 && ...
        ~isempty(regexp(numerals, '^(IV|IX)'))) || ...
    length(regexp(numerals, 'I')) > 3
    return;
end

numerals = regexprep(numerals, 'IV', '4');
numerals = regexprep(numerals, 'IX', '9');
numerals = regexprep(numerals, 'X', 'A');
numerals = regexprep(numerals, 'V', '5');
numerals = regexprep(numerals, 'I', '1');

for a = 1:length(numerals)
    if strcmp(numerals(a), 'A')
        arabic = arabic + 10;
    else
        arabic = arabic + str2double(numerals(a));
    end
end
if arabic < 21
    arabic = uint8(arabic);
else
    arabic = uint8(0);
end