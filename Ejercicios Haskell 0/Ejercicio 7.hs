filtrarPares :: [Int] -> [Int]
filtrarPares [] = []
filtrarPares (x:xs)
    | even x = x : filtrarPares xs
    | otherwise = filtrarPares xs

listaOriginal :: [Int]
listaOriginal = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

paresFiltrados :: [Int]
paresFiltrados = filtrarPares listaOriginal

main :: IO ()
main = print paresFiltrados
