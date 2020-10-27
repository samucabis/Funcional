
x = 1:2: drop 2 (concat . zipWith replicate x . cycle $ [1, 2])