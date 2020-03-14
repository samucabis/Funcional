--existe x [] = False
--existe x (y:ys) | x == y = True | otherwise = existe x ys

--uniao [] ys = ys
--uniao (xs) [] = xs
uniao xs (y:ys) = xs ++ [ y | y <- ys, notElem y xs]
--uniao (x:xs) ys | existe x ys = uniao xs ys | otherwise = x:uniao xs ys

