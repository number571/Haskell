module Main where

min' :: Ord a => a -> a -> a
min' x y | x < y = x
min' _ y = y

main :: IO()
main = print $ min' 5 7
