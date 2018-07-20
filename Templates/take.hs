module Main where

take' :: Int -> [a] -> [a]
take' x _ | x <= 0 = []
take' _ [] = []
take' x (y:ys) = y : take' (x-1) ys

main :: IO()
main = print $ take' 5 [1..10]
