module Main where

tails' :: [a] -> [[a]]
tails' [] = []:[]
tails' (x:xs) = (x:xs) : tails' xs 

main :: IO()
main = print $ tails' [1..5]
