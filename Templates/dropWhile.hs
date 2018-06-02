{-# LANGUAGE MultiWayIf #-}
module Main where

dropWhile' _ [] = []
dropWhile' f (x:xs) = if
    | f x -> dropWhile' f xs
    | otherwise -> x:xs

main :: IO()
main = print $ dropWhile' (<3) [1..5]
