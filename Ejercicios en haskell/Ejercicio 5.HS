moduloVector :: Floating a => [a] -> a
moduloVector = sqrt . sum . map (^2)

-- Ejemplo de uso
main :: IO ()
main = do
    let vector3D = [3, 4, 5]  
    putStrLn $ "Vector 3D: " ++ show vector3D
    putStrLn $ "Módulo del vector 3D: " ++ show (moduloVector vector3D)
