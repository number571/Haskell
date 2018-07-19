module Main where

length' :: [a] -> Int
length' [] = 0
length' (_:xs) = 1 + length' xs

{-
sum' :: Num a => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

length' :: [a] -> Int
length' xs = sum' [1 | _ <- xs]
-}

main :: IO()
main = print $ length' [1..100]
