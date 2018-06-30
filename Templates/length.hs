module Main where

length' :: [a] -> Int
length' [] = 0
length' (_:xs) = 1 + length' xs

main :: IO()
main = print $ length' [1..100]
