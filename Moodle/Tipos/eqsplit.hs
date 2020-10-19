split (x:xs) = ([],(x:xs)):(zip (map (x:) (map fst (split xs))) (map snd (split xs)))
