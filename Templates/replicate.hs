module Main where

replicate' :: Int -> a -> [a]
replicate' x _ | x <= 0 = []
replicate' x y = y : replicate' (x-1) y

main :: IO()
main = print $ replicate' 5 "aa"
