menores n [] = []
menores n (x:xs)| (x <= n) = x : menores n xs | otherwise =  menores n xs