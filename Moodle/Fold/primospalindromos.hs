divisores 0 n x = x
divisores divisor n x
    | n `mod` divisor /= 0 = divisores (divisor-1) n x
    | otherwise = [divisor] ++ (divisores (divisor-1) n x)

ehPrimo 1 = False
ehPrimo 2 = True
ehPrimo k 
    | length(divisores k k []) == 2 = True
    | otherwise = False

checkPalindromo [] = True
checkPalindromo x 
    | x == reverse x = True
    | otherwise = False

primosPalindromo = [ x | x <- [2 .. ],ehPrimo x, checkPalindromo (show x) ]
