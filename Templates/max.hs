module Main where

max' :: Ord a => a -> a -> a
max' x y | x > y = x
max' _ y = y

main :: IO()
main = print $ max' 5 7
