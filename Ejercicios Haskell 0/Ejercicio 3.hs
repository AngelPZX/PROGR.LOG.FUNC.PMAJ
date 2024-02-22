numerosPares :: Int -> [Int]
numerosPares n = [x | x <- [0..n], even x]

limite :: Int
limite = 10

resultado :: [Int]
resultado = numerosPares limite

main :: IO ()
main = print resultado
