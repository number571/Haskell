module Main where

head' :: [a] -> a
head' [] = undefined
head' (x:_) = x

main :: IO()
main = print $ head' [1..10]
