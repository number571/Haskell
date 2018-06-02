module Main where

sum' :: Num a => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

main :: IO()
main = print $ sum' [0..5]
