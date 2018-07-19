module Main where

elem' :: Eq a => a -> [a] -> Bool
elem' _ [] = False
elem' x (y:ys)
    | x == y = True
    | otherwise = elem' x ys

main :: IO()
main = print $ elem' 3 [1,2,3,4,5]
