module Main where

length' :: [a] -> Int
length' [] = 0
length' (x:xs) = 1 + length' xs

index :: [Int] -> [Int]
index xs = [(length' xs-1), (length' xs-2) .. 0]

reverse' :: [Int] -> [Int]
reverse' xs = [ xs !! x | x <- index xs]

main :: IO()
main = print $ reverse' [0,2..10]
