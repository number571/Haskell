{-# LANGUAGE MultiWayIf #-}
module Main where

replicate' :: Int -> a -> [a]
replicate' 0 _ = []
replicate' x y = y : replicate' (x-1) y

main :: IO()
main = print $ replicate' 5 "aa"
