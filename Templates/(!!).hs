module Main where

(!!!) :: [a] -> Int -> a
(!!!) (x:xs) 0 = x
(!!!) (x:xs) n = (!!!) xs (n-1)

main :: IO()
main = print $ [1..10] !!! 2
