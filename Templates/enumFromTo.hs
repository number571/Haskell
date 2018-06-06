module Main where

enumFromTo' :: Enum a => a -> a -> [a]
enumFromTo' x y = [x..y]

main :: IO()
main = print $ enumFromTo' 'a' 'z'
