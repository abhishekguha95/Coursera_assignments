function m = next_prime(n)
 n = n+1;
if(~isscalar(n) || n < 1 || n ~= fix(n))
    error('give a positive integer')
else
    while isprime(n) ~= true
        n = n+1;
    end
end
m = n;

    