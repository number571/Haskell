module Main where

length' :: [a] -> Int
length' [] = 0
length' (x:xs) = 1 + length' xs

last' :: [a] -> a
last' x = x !! (length' x-1)

main = print $ last' [1,2,3,4,5]
