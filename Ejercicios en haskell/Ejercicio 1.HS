aplicarDescuento :: Float -> Float -> Float
aplicarDescuento precio descuento = precio * (1 - descuento)

aplicarIVA :: Float -> Float -> Float
aplicarIVA precio iva = precio * (1 + iva)

precioFinalCesta :: [(Float, Float)] -> (Float -> Float -> Float) -> Float
precioFinalCesta [] _ = 0
precioFinalCesta ((precio, porcentaje):productos) funcion =
    funcion precio porcentaje + precioFinalCesta productos funcion

-- Ejemplo de uso
main :: IO ()
main = do
    let cesta = [(100, 0.1), (50, 0.05), (200, 0.15)] 
    let precioFinalConDescuento = precioFinalCesta cesta aplicarDescuento
    let precioFinalConIVA = precioFinalCesta cesta aplicarIVA
    putStrLn $ "Precio final de la cesta con descuento: " ++ show precioFinalConDescuento
    putStrLn $ "Precio final de la cesta con IVA: " ++ show precioFinalConIVA
