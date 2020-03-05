inserir x [] = [x]              
inserir x (first:xs)              
    | x <= first = x : first : xs  
    | otherwise = first : (inserir x xs)  