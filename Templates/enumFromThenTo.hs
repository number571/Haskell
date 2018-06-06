module Main where

enumFromThenTo' :: Enum a => a -> a -> a -> [a]
enumFromThenTo' x y z = [x,y..z]

main :: IO()
main = print $ enumFromThenTo' 'a' 'c' 'z'
