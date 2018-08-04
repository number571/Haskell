module Main where

set :: a -> Int -> [a] -> [a]
set y 0 (_:xs) = y : xs
set y n (x:xs) = x : set y (n-1) xs

main :: IO()
main = print $ set 'z' 1 "abc"
