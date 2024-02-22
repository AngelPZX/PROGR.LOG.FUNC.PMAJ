longitudCadena :: String -> Int
longitudCadena [] = 0
longitudCadena (_:xs) = 1 + longitudCadena xs

cadenaEjemplo :: String
cadenaEjemplo = "Hola Mundo"

longitud :: Int
longitud = longitudCadena cadenaEjemplo

main :: IO ()
main = print longitud
