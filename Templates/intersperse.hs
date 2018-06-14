module Main where

intersperse' :: a -> [a] -> [a]
intersperse' _ [] = []
intersperse' _ [x] = [x]
intersperse' y (x:xs) = x : y : intersperse' y xs

main :: IO()
main = print $ intersperse' 0 [1,2,3,4,5]
