{-# LANGUAGE MultiWayIf #-}
module Main where

all' :: (a -> Bool) -> [a] -> Bool
all' _ [] = True
all' f (x:xs) = if
    | f x -> all' f xs
    | otherwise -> False

main = print $ all' (<10) [1,2,3,4,5]
