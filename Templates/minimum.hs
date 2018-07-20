module Main where

min' :: Ord a => a -> a -> a
min' x y | x < y = x | otherwise = y

minimum' :: Ord a => [a] -> a
minimum' [] = undefined
minimum' [x] = x
minimum' (x:xs) = min' x $ minimum' xs

main :: IO()
main = print $ minimum' [2,5,3,8,1,3,4]
