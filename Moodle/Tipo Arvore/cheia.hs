data ArvBin a = Vazia | No a ( ArvBin a ) ( ArvBin a ) deriving (Eq,Show)
cheia Vazia = False
cheia (No no (Vazia) (Vazia)) = True
cheia (No no (esq) (Vazia)) = False
cheia (No no (Vazia) (dir)) = False
cheia (No no (esq) (dir)) = (cheia esq && cheia dir) 
