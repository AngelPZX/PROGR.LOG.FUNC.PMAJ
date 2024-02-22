factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

numero :: Int
numero = 5

resultado :: Int
resultado = factorial numero

main :: IO ()
main = print resultado
