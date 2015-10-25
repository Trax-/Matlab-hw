function success = sparse_array_out(d2, filename)
fid = fopen(filename,'w+');
if fid < 0
   fprintf('error opening file\n');
   success = false;
   return;
end

[rows, cols] = size(d2);

elements = nnz(d2);

[row, col, data] = find(d2);

fwrite(fid,[rows, cols, elements], 'uint32');

for element = 1:elements
    fwrite(fid, row(element), 'uint32');
    fwrite(fid, col(element), 'uint32');
    fwrite(fid, data(element), 'double');
end

fclose(fid);
success = true;