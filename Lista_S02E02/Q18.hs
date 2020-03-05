rotateD :: Int -> [a] -> [a]
rotateD 0 xs = xs
rotateD n xs = rotateD (n - 1) (last xs : init xs)
