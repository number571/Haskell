module Main where

map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map' f xs

numbers :: [Integer]
numbers = 0 : map' (+1) numbers

take' :: Int -> [a] -> [a]
take' 0 _ = []
take' _ [] = []
take' x (y:ys) = y : take' (x-1) ys

main :: IO()
main = print $ take' 5 numbers
