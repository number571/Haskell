module Main where

take' :: Int -> [a] -> [a]
take' 0 _ = []
take' _ [] = []
take' x (y:ys) = y : take' (x-1) ys

enumFromThenTo' :: Enum a => a -> a -> a -> [a]
enumFromThenTo' x y z = [x,y..z]

main :: IO()
main = print $ enumFromThenTo' 'a' 'c' 'z'
