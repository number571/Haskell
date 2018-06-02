module Main where

map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map' f xs

main :: IO()
main = print $ map' (^2) [0..10]
