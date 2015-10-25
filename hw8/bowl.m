function score = bowl(pins)
score = 0;

% perfect game no reason to do anything else
if length(find(pins == 10)) == 12
    score = 300;
    return
end

if pins(1) == 10
    temp = [pins(1), 0];
else
    temp = pins(1);
end

for i = 2:length(pins)
    if i > 1 && pins(i) == 10 && pins(i - 1) ~= 0 && length(temp) < 18
        temp = [temp(1,1:end), pins(i), 0];
    else
        temp = [temp(1,1:end), pins(i)];
    end
end

% Find if any first 9 frames scores are > 10
if find(temp(1:2:18) + temp(2:2:18) > 10)
    score = -1;
    return
end

% Check last frames
if ~isempty(find(temp(19:end) > 10, 1))
    score = -1;
    return
end

if length(temp) > 21 || sum(temp) < 20 || ...
        (max(temp) == 1 && sum(temp) >= 21) || ...
        length(temp) < 20 || (temp(19) == 10 && length(temp) < 21)
    score = -1;
    return;
end

if length(find(pins == 10)) > 12 || ~isempty(find(pins < 0, 1))
    score = -1;
    return
end

i = 1;

while i < length(pins)
    score = score + pins(i);
    if mod(i, 2) == 0 && pins(i) + pins(i - 1) == 10
        score = score + pins(i + 1);
        if i + 1 == length(pins)
            return
        end
    elseif i > 2 && pins(i) + pins(i - 1) == 10 && pins(i - 2) == 10
        score = score + pins(i + 1);
        if i + 1 == length(pins)
            return
        end
    elseif pins(i) == 10
        score = score + pins(i + 1) + pins(i + 2);
        if i + 2 == length(pins)
            return
        end
    end
    i = i + 1;
end
score = score + pins(end);