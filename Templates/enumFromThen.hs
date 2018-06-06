module Main where

take' :: Int -> [a] -> [a]
take' 0 _ = []
take' _ [] = []
take' x (y:ys) = y : take' (x-1) ys

enumFromThen' :: Enum a => a -> a -> [a]
enumFromThen' x y = [x,y..]

main :: IO()
main = print $ take' 10 $ enumFromThen' 'a' 'c'
