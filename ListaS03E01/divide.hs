divide n [] = []
divide n xs = [(take n xs)] ++ divide n (drop n xs)