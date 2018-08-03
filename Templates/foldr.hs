module Main where

foldr' :: (a -> b -> b) -> b -> [a] -> b
foldr' _ y [] = y
foldr' f y (x:xs) = f x (foldr' f y xs)

main :: IO()
main = print $ foldr' (/) 64 [4,2,4]
