{-# LANGUAGE MultiWayIf #-}

module Main where
import Data.Char (chr, ord, toUpper, isAlpha, isDigit)

encrypt :: (Int -> Int -> Int) -> Char -> Int -> Char
encrypt m c k = if  
    | isAlpha c -> chr $ (ord c' `m` k - 65) `mod` 26 + ord 'A'
    | isDigit c -> chr $ (ord c  `m` k - 48) `mod` 10 + ord '0'
    | otherwise -> c
    where c' = toUpper c

caesar :: Char -> Int -> String -> String
caesar m k s = if
    | m == 'e' || m == 'E' -> [encrypt (+) c k | c <- s]
    | m == 'd' || m == 'D' -> [encrypt (-) c k | c <- s]
    | otherwise -> "Mode is not found"

main :: IO()
main = print [encrypted, decrypted]
    where 
        encrypted = caesar 'e' 3 "hello, world"
        decrypted = caesar 'd' 3 encrypted
