module Main where

take' :: Int -> [a] -> [a]
take' n _ | n <= 0 = []
take' _ [] = []
take' n (x:xs) = x : take' (n-1) xs

main :: IO()
main = print $ take' 5 [1..10]
