sumarLista :: [Int] -> Int
sumarLista [] = 0
sumarLista (x:xs) = x + sumarLista xs

listaEjemplo :: [Int]
listaEjemplo = [1, 2, 3, 4, 5]

resultado :: Int
resultado = sumarLista listaEjemplo

main :: IO ()
main = print resultado
