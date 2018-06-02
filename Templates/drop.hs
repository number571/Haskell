{-# LANGUAGE MultiWayIf #-}
module Main where

drop' :: Int -> [a] -> [a]
drop' _ [] = []
drop' x (y:ys) = if
    | x /= 0 -> drop' (x-1) ys
    | otherwise -> y:ys

main :: IO()
main = print $ drop' 5 [1..10]
