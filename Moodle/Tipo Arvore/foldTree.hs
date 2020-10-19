data Arvore a = Leaf a 
    | Node (Arvore a) (Arvore a) deriving (Show)

foldTree _ base Leaf = base
foldTree fn base (Node left a right) = foldTree fn base' left
   where
   base'  = fn a base''
   base'' = foldTree fn base right

