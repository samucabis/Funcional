data Arv a = Vazia 
    | No a ( Arv a ) ( Arv a ) deriving (Eq , Show)

insertArvore x Vazia = No x Vazia Vazia
insertArvore x (No l m r)   | x > l     =  No l m (insertArvore x r)
                        | otherwise = No l (insertArvore x m) r