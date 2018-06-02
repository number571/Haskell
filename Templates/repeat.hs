module Main where

take' :: Int -> [a] -> [a]
take' 0 _ = []
take' _ [] = []
take' x (y:ys) = y : take' (x-1) ys

repeat' :: a -> [a]
repeat' x = x : repeat' x

main :: IO()
main = print $ take' 5 $ repeat' 'A'
