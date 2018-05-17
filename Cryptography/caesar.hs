{-# LANGUAGE MultiWayIf #-}

module Main where
import Data.Char (chr, ord, toUpper, isAlpha, isDigit)

encrypt :: Char -> Int -> Char
encrypt c k = if  
    | isAlpha c -> chr $ (ord c' + k - 13) `mod` 26 + ord 'A'
    | isDigit c -> chr $ (ord c  + k - 13) `mod` 10 + ord '0'
    | otherwise -> c
    where c' = toUpper c

decrypt :: Char -> Int -> Char
decrypt c k = if  
    | isAlpha c -> chr $ (ord c' - k - 13) `mod` 26 + ord 'A'
    | isDigit c -> chr $ (ord c  - k - 13) `mod` 10 + ord '0'
    | otherwise -> c
    where c' = toUpper c

caesar :: Char -> String -> Int -> String
caesar m s k = case m of
    'e' -> [encrypt c k | c <- s]
    'd' -> [decrypt c k | c <- s]
    otherwise -> "Mode is not found"

main :: IO()
main = print (caesar 'e' "Hello World!" 1)
