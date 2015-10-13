function tsums = square_wave(n)
temp = 0;
%t = 0:4 * pi * .001:4 * pi;
t = linspace(0, 4 * pi, 1001);
for k = 1:n
    temp = temp + (sin((2 * k - 1) * t) / (2 * k - 1)); 
end
tsums = temp;