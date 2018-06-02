module Main where

zip' :: [a] -> [b] -> [(a,b)]
zip' [] [] = []
zip' [] [_] = []; zip' [_] [] = []
zip' (x:xs) (y:ys) = (x,y) : zip' xs ys

main :: IO()
main = print $ zip' [0..4] [5..9]
