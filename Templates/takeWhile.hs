{-# LANGUAGE MultiWayIf #-}
module Main where

takeWhile' :: (a -> Bool) -> [a] -> [a]
takeWhile' _ [] = []
takeWhile' f (x:xs) = if
    | f x -> x : takeWhile' f xs
    | otherwise -> []

main :: IO()
main = print $ takeWhile (<5) [1..10]
