rotateE :: Int -> [a] -> [a]
rotateE 0 xs = xs
rotateE n xs = rotateE (n - 1) (tail xs ++ take 1 xs)