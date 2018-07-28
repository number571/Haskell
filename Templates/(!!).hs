module Main where

(!!!) :: [a] -> Int -> a
(!!!) [] _ = undefined
(!!!) (x:_) 0 = x
(!!!) (_:xs) n = (!!!) xs (n-1)

main :: IO()
main = print $ "123" !!! 4
