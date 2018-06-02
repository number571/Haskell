module Main where

min' :: Ord a => a -> a -> a
min' x y | x < y = x
min' x y | x > y = y
min' x _ = x

main :: IO()
main = print $ min' 5 5
