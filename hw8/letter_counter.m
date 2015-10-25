function characters = letter_counter(filename)
characters = -1;
fid = fopen(filename,'rt');
if fid < 0
%     error('error opening file %s', filename);
    return;
end
text = char(fread(fid,'char')');
characters = length(cell2mat(regexp(text,'[a-zA-Z]*','match')));
fclose(fid);
