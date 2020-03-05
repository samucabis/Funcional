freq n [] = 0
freq n (x:xs)| (x == n) = 1 + freq n xs | otherwise = 0 + freq n xs