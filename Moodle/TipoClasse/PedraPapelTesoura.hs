data Gesto = Pedra | Papel | Tesoura deriving (Show,Eq)

ganhaDe (g1,g2)
    | g1 == Pedra   = if g2 == Tesoura then True else False
    | g1 == Papel   = if g2 == Pedra   then True else False
    | g1 == Tesoura = if g2 == Papel   then True else False

ganhadores [] = []
ganhadores xs = [posicao xs x 0  | x <- xs, ganhaDe x]
posicao (g:gs) x ind 
    | fst g == fst x && snd g == snd x = ind
    | otherwise = posicao gs x (ind+1)