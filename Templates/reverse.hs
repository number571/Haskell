module Main where

length' :: [a] -> Int
length' [] = 0
length' (x:xs) = 1 + length' xs

init' :: [a] -> [a]
init' [x] = []
init' (x:xs) = x : init' xs

last' :: [a] -> a
last' x = x !! (length' x-1)

reverse' :: [a] -> [a]
reverse' [] = []
reverse' xs = last' xs : reverse' (init' xs)

main :: IO()
main = print $ reverse' [0,2..10]
