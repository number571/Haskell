module Main where

map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map' f xs

mapMatrix :: (a -> b) -> [[a]] -> [[b]]
mapMatrix _ [] = []
mapMatrix f (xs:xss) = map' f xs : mapMatrix f xss

main :: IO()
main = print $ mapMatrix (*2) [[1,2,3],[4,5,6],[7,8,9]]
