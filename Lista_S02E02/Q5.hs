elemento :: Int -> [a] -> a
elemento 0 (x : _)  =  x
elemento n (_ : xs) = elemento (n - 1) xs