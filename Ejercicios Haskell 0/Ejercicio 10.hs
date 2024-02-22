esPalindromo :: String -> Bool
esPalindromo str = str == reverse str

cadena1 :: String
cadena1 = "reconocer"

cadena2 :: String
cadena2 = "hola"

main :: IO ()
main = do
    putStrLn $ "¿La cadena \"" ++ cadena1 ++ "\" es un palíndromo? " ++ show (esPalindromo cadena1)
    putStrLn $ "¿La cadena \"" ++ cadena2 ++ "\" es un palíndromo? " ++ show (esPalindromo cadena2)
