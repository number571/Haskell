module Main where

all' :: (a -> Bool) -> [a] -> Bool
all' _ [] = True
all' f (x:xs)
    | f x = all' f xs
    | otherwise = False

main :: IO()
main = print $ all' (<10) [1,2,3,4,5]
