import Data.Char (toUpper)
import Data.Map.Strict (Map)
import qualified Data.Map.Strict as Map

-- Función que convierte una nota en una calificación
calificacion :: Int -> String
calificacion nota
    | nota >= 95 = "Excelente"
    | nota >= 85 = "Notable"
    | nota >= 75 = "Bueno"
    | nota >= 70 = "Suficiente"
    | otherwise = "Desempeño insuficiente"

-- Función que recibe un diccionario con asignaturas y notas, y devuelve otro diccionario con asignaturas en mayúsculas y calificaciones
convertirCalificaciones :: Map String Int -> Map String String
convertirCalificaciones = Map.mapKeys (map toUpper) . Map.map calificacion

-- Ejemplo de uso
main :: IO ()
main = do
    let notas = Map.fromList [("Matemáticas", 85), ("Historia", 70), ("Ciencias", 95), ("Calculo", 60 )]
    let calificaciones = convertirCalificaciones notas
    putStrLn "Notas originales:"
    mapM_ (\(asignatura, nota) -> putStrLn $ asignatura ++ ": " ++ show nota) (Map.toList notas)
    putStrLn "\nCalificaciones:"
    mapM_ (\(asignatura, calif) -> putStrLn $ asignatura ++ ": " ++ calif) (Map.toList calificaciones)
