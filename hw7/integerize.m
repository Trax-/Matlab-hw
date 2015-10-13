function smallest = integerize(A)
m = max(A);
if m <= intmax('uint8')
    smallest = 'uint8';
    return;
elseif m <= intmax('uint16')
    smallest = 'uint16';
    return;
elseif m <= intmax('uint32')
    smallest = 'uint32';
    return;
elseif m <= intmax('uint64')
    smallest = 'uint64';
    return;
else
    smallest = 'NONE';
end