module Main where

factorial :: Integral a => a -> a
factorial x | x < 2 = 1
factorial x = x * factorial(x-1)

main :: IO()
main = print $ factorial 5
