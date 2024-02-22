divisores :: Int -> [Int]
divisores n = [x | x <- [1..n], n `mod` x == 0]

numero :: Int
numero = 12

listaDivisores :: [Int]
listaDivisores = divisores numero

main :: IO ()
main = print listaDivisores
