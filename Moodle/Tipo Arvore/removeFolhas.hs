
data BinaryTree a = Vazio | Node a ( BinaryTree a ) ( BinaryTree a ) deriving (Show,Eq)

removeFolhas Vazio = Vazio
removeFolhas (Node no (Vazio ) (Vazio)) = Vazio
removeFolhas (Node no (esq) (dir)) = Node no (removeFolhas esq) (removeFolhas dir)
removeFolhas (Node no (esq) (Vazio)) = Node no (removeFolhas esq) (Vazio)
removeFolhas (Node no (Vazio) (dir))= Node no (Vazio) (removeFolhas dir)