existe :: [Int] -> Int -> Bool
existe [] _ = False 
existe (x:xs) n | (x == n) = True | otherwise = existe xs n