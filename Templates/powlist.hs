module Main where

powlist :: Integral a => [a] -> a -> [a]
powlist list y = [x ^ y | x <- list]

main :: IO()
main = print $ powlist [0..10] 2
