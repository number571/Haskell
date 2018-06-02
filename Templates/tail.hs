module Main where

tail' :: [a] -> [a]
tail' (x:xs) = xs

main :: IO()
main = print (tail' [1..10])
