module Main where

min' :: Ord a => a -> a -> a
min' x y | x < y = x
min' x y | x > y = y
min' x _ = x

minimum' :: Ord a => [a] -> a
minimum' [x] = x
minimum' (x:y:xs) = minimum' ((min' x y):xs)

main :: IO()
main = print $ minimum' [1,5,3,8,2,3,4]
