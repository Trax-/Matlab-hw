function success = sparse_array_in(filename)
fid = fopen(filename,'r');
if fid < 0
   fprintf('error opening file\n');
   success = [];
   return;
end
nums = fread(fid,3,'uint32');
success = zeros(nums(1),nums(2));
for idx = 1:nums(3)
    row = fread(fid,1, 'uint32');
    col = fread(fid,1, 'uint32');
    success(row, col) = fread(fid, 1, 'double');
end
fclose(fid);

