module Main where

length' :: [a] -> Int
length' [] = 0
length' (x:xs) = 1 + length' xs

index :: [a] -> [Int]
index xs = [(length' xs-1), (length' xs-2) .. 0]

reverse' :: [a] -> [a]
reverse' xs = [ xs !! x | x <- index xs]

main :: IO()
main = print $ reverse' [0,2..10]
