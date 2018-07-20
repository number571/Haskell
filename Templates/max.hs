module Main where

max' :: Ord a => a -> a -> a
max' x y | x > y = x | otherwise = y

main :: IO()
main = print $ max' 5 7
