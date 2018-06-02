module Main where

length' :: [a] -> Int
length' [] = 0
length' (x:xs) = 1 + length' xs

main :: IO()
main = print $ length' [1..100]
