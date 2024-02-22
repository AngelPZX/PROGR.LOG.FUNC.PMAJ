reversoLista :: [a] -> [a]
reversoLista [] = []
reversoLista (x:xs) = reversoLista xs ++ [x]

listaEjemplo :: [Int]
listaEjemplo = [1, 2, 3, 4, 5]

listaInvertida :: [Int]
listaInvertida = reversoLista listaEjemplo

main :: IO ()
main = print listaInvertida
