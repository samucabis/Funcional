data ArvBin a = Vazia | No a (ArvBin a) (ArvBin a) deriving (Show)

menorNivelFolha (Vazia) = []
menorNivelFolha (No x (Vazia) (Vazia)) = [x]
menorNivelFolha  (No x esq dir) = (menorNivelFolha esq) ++ (menorNivelFolha dir) 