fibonacci :: Int -> Int
fibonacci n
    | n == 0 = 0
    | n == 1 = 1
    | otherwise = fibonacci (n - 1) + fibonacci (n - 2)

n :: Int
n = 10

resultado :: Int
resultado = fibonacci n

main :: IO ()
main = print resultado
