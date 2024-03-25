module Library where
import PdePreludat
import Data.Int
import GHC.Integer (Integer)
import GHC.Real (fromIntegral)

doble :: Number -> Number
doble numero = numero + numero

aguantenLasOtaku :: Number -> Bool
aguantenLasOtaku = even


esPalindromo :: String -> Bool
esPalindromo palabra | palabra == reverse palabra = True
                     | otherwise = False

esMultiploDeTres :: Number -> Bool
esMultiploDeTres numero | mod numero 3 == 0  = True
                        | otherwise = False

esMultiploDe :: Number -> Number -> Bool
esMultiploDe a b | mod b a == 0 = True
                | otherwise = False

cubo :: Number -> Number
cubo x = x*x*x

area :: Number -> Number -> Number
area h l = h * l

esBisiesto :: Number -> Bool
esBisiesto anio = (esMultiploDe 400 anio || esMultiploDe 4 anio) && not (esMultiploDe 100 anio)

celciusToFahr :: Number -> Number
celciusToFahr cel = cel * 1.8 + 32

fahrToCelsius :: Integer -> Integer -- estoy teniendo problemas con los tipos de datos
fahrToCelsius far = far 