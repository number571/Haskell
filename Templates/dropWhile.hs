{-# LANGUAGE MultiWayIf #-}
module Main where

dropWhile' :: (a -> Bool) -> [a] -> [a]
dropWhile' _ [] = []
dropWhile' f (x:xs) = if
    | f x -> dropWhile' f xs
    | otherwise -> x:xs

main :: IO()
main = print $ dropWhile' (< 4) [1..10]
