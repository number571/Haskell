module Main where

(!!!) :: [a] -> Int -> a
(!!!) (x:_) 0 = x
(!!!) (_:xs) n = (!!!) xs (n-1)

main :: IO()
main = print $ "hello, world" !!! 4
