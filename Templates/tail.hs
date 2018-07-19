module Main where

tail' :: [a] -> [a]
tail' [] = []
tail' (_:xs) = xs

main :: IO()
main = print $ tail' [1..10]
