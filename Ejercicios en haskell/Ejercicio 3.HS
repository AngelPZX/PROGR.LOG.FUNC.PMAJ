import Data.Map.Strict (Map)
import qualified Data.Map.Strict as Map

diccionarioLongitudes :: String -> Map String Int
diccionarioLongitudes frase = foldr contarPalabra Map.empty (words frase)
    where contarPalabra palabra diccionario = Map.insert palabra (length palabra) diccionario

-- Ejemplo de uso
main :: IO ()
main = do
    let frase = "Hola mundo"
    let diccionario = diccionarioLongitudes frase
    putStrLn $ "Frase original: " ++ frase
    putStrLn "Diccionario de longitudes:"
    mapM_ (\(palabra, longitud) -> putStrLn $ palabra ++ " - " ++ show longitud) (Map.toList diccionario)
