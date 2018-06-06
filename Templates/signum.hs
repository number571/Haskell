module Main where

signum' x | x > 0 = 1
signum' x | x < 0 = -1
signum' x | x == 0 = 0

main :: IO()
main = print $ signum' 5
