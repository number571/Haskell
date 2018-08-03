module Main where

(!!!) :: [a] -> Int -> a
(!!!) _ n | n < 0 = undefined
(!!!) [] _ = undefined
(!!!) (x:_) 0 = x
(!!!) (_:xs) n = (!!!) xs (n-1)

main :: IO()
main = print $ ['a'..'z'] !!! 2
