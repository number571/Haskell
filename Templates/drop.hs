module Main where

drop' :: Int -> [a] -> [a]
drop' _ [] = []
drop' x (y:ys)
    | x /= 0 = drop' (x-1) ys
    | otherwise = y:ys

main :: IO()
main = print $ drop' 5 [1..10]
