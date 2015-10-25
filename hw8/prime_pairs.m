function p = prime_pairs(n)
p = -1;
for temp = primes(100000)
    if isprime(n + temp);
        p = temp;
        return;
    end
end