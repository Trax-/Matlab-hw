function arabic = roman2(numerals)

arabic = uint16(0);
    
if length(regexp(numerals, 'I')) > 3 || ...
        ~isempty(regexp(numerals, 'X{4}', 'once')) || ...
        length(regexp(numerals, 'V')) > 1 || ...
        length(regexp(numerals, 'L')) > 1 || ...
        ~isempty(regexp(numerals, 'I[VXLC]I', 'once')) || ...
        ~isempty(regexp(numerals, 'X[VLC]X', 'once')) || ...
        ~isempty(regexp(numerals, 'IXV', 'once')) || ...
        ~isempty(regexp(numerals, '[^IVXLC]', 'once'))
    return;
end

numerals = regexprep(numerals, 'XC', 'XXXXXXXXX');
numerals = regexprep(numerals, 'XL', 'XXXX');
numerals = regexprep(numerals, 'IV', '4');
numerals = regexprep(numerals, 'IX', '9');
numerals = regexprep(numerals, 'V', '5');
numerals = regexprep(numerals, 'I', '1');

for a = 1:length(numerals)
    if strcmp(numerals(a), 'X')
        arabic = arabic + 10;
    elseif strcmp(numerals(a), 'L')
        arabic = arabic + 50;
        
    elseif strcmp(numerals(a), 'C')
        arabic = arabic + 100;
    else
        arabic = arabic + str2double(numerals(a));
    end
end

if arabic < 400
    arabic = uint16(arabic);
else
    arabic = uint16(0);
end
