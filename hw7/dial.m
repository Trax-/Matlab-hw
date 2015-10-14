function output = dial(input)

output = blanks(length(input));

if regexp(input, '[!"$%&+\./:;<=>?@QZ\[\]^_`{|}~a-z]') > 0
    output = [];
    return;
end

for c = 1:length(input)
    if isletter(input(c))
        if regexp(input(c), '[ABC]') > 0
            output(c) = '2';
        elseif regexp(input(c), '[DEF]') > 0
            output(c) = '3';
        elseif regexp(input(c), '[GHI]') > 0
            output(c) = '4';
        elseif regexp(input(c), '[JKL]') > 0
            output(c) = '5';
        elseif regexp(input(c), '[MNO]') > 0
            output(c) = '6';
        elseif regexp(input(c), '[PRS]') > 0
            output(c) = '7';
        elseif regexp(input(c), '[TUV]') > 0
            output(c) = '8';
        elseif regexp(input(c), '[WXY]') > 0
            output(c) = '9';
        end
    elseif regexp(input(c), '[()-]') > 0
        output(c) = ' ';
    else
        output(c) = input(c);
    end
end