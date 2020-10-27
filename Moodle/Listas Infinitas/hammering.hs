
merge :: [Integer] -> [Integer] -> [Integer]
merge (x:xs)(y:ys)
      | x == y    = x : merge xs ys
      | x <  y    = x : merge xs (y:ys)
      | otherwise = y : merge (x:xs) ys
merge [] ys = ys
merge xs [] = xs

hammering = out 
       where 
             out = merge (merge (1:map(*2) out) (1:map(*3) out) ) (1:map(5*) out)