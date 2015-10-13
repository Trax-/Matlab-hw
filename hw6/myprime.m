function isprime = myprime(n)
if n == 2 || n == 3
    isprime = true;
    return;
elseif mod(n, 2) == 0 || mod(n, 3) == 0
    isprime = false;
    return;
end
 i = 5;
 w = 2;
 
 while i * i <= n
     if mod(n, i) == 0
         isprime = false;
         return;
     end
     i = i + w;
     w = 6 - w;
 end
 isprime = true;
    