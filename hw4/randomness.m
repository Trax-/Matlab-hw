function nxm = randomness(limit, n, m)
nxm = floor(1 + rand(n, m) * limit);