aplicarFuncion :: (a -> b) -> [a] -> [b]
aplicarFuncion _ [] = [] 
aplicarFuncion f (x:xs) = f x : aplicarFuncion f xs 

-- Ejemplo de uso
doble :: Int -> Int
doble x = x * 2

main :: IO ()
main = do
    let listaOriginal = [1, 2, 3, 4, 5]
    let listaResultado = aplicarFuncion doble listaOriginal
    putStrLn $ "Lista original: " ++ show listaOriginal
    putStrLn $ "Lista resultado (doble de cada elemento): " ++ show listaResultado
