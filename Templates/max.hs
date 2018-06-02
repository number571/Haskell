module Main where

max' :: Ord a => a -> a -> a
max' x y | x < y = y
max' x y | x > y = x
max' x _ = x

main :: IO()
main = print $ max' 5 7
