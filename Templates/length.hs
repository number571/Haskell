module Main where

length' :: [a] -> Int
length' [] = 0
length' (_:xs) = 1 + length' xs

{-
length' :: [a] -> Int
length' xs = sum [1 | _ <- xs]
-}

main :: IO()
main = print $ length' [1..100]
