{-# LANGUAGE MultiWayIf #-}
module Main where

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' f (x:xs) = if
    | f x -> x : filter' f xs
    | otherwise -> filter' f xs

main :: IO()
main = print $ filter' (>5) [0..10]
