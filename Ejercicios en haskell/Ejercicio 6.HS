import Data.List (sort)

media :: Floating a => [a] -> a
media xs = sum xs / fromIntegral (length xs)

desviacionEstandar :: Floating a => [a] -> a
desviacionEstandar xs =
  let m = media xs
      n = fromIntegral $ length xs
      deviations = map (\x -> (x - m) ^ 2) xs
  in sqrt (sum deviations / (n - 1))  

puntuacionTipica :: Floating a => a -> [a] -> a
puntuacionTipica x xs = (x - media xs) / desviacionEstandar xs

valoresAtipicos :: (Ord a, Floating a) => [a] -> [a]
valoresAtipicos xs =
  let mean = media xs
      stdDev = desviacionEstandar xs
      puntuaciones = map (\x -> puntuacionTipica x xs) xs
  in map fst . filter (\(_, score) -> score > 3 || score < -3) $ zip xs puntuaciones

-- Ejemplo de uso
main :: IO ()
main = do
  let muestra = [1, 2, 3, 4, 5, 100, 200, 300, -100, -200, -300]
  putStrLn $ "Muestra original: " ++ show muestra
  putStrLn $ "Valores atípicos: " ++ show (valoresAtipicos muestra)
