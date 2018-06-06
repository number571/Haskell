module Main where

negate' :: Num a => a -> a
negate' x = -x

main :: IO()
main = print $ negate' 5
