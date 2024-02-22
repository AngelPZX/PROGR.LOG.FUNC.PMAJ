duplicarElementos :: [Int] -> [Int]
duplicarElementos [] = []
duplicarElementos (x:xs) = x : x : duplicarElementos xs

listaOriginal :: [Int]
listaOriginal = [1, 2, 3, 4, 5]

listaDuplicada :: [Int]
listaDuplicada = duplicarElementos listaOriginal

main :: IO ()
main = print listaDuplicada
