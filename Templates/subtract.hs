module Main where

subtract' :: Num a => a -> a -> a
subtract' x y = (-) y x

main :: IO()
main = print $ subtract' 2 5
