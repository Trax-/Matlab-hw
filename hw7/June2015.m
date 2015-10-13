function info = June2015()
info = cell(30,3);
for t = 1:30
    info{t, 1} = 'June';
    info{t, 2} = t;
    info{t, 3} = char(day(datetime(2015,06,t), 'shortname'));
end
