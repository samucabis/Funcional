
divisores 0 n x = x
divisores divisor n x
    | n `mod` divisor /= 0 = divisores (divisor-1) n x
    | otherwise = [divisor] ++ (divisores (divisor-1) n x)

ehPrimo 1 = False
ehPrimo 2 = True
ehPrimo k 
    | length(divisores k k []) == 2 = True
    | otherwise = False

primosR a b = 
    takeWhile (<= b) $ dropWhile (< a) $ sieve [2..]
    where sieve (n:ns) = n:sieve [ m | m <- ns, m `mod` n /= 0 ]

goldbach n = [(n,x,y) | x <- primosR 2 (n-1),let y = n-x, ehPrimo y]
