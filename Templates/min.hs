module Main where

min' :: Ord a => a -> a -> a
min' x y | x < y = x | otherwise = y

main :: IO()
main = print $ min' 5 7
