module Main where

concat' :: [[a]] -> [a]
concat' [] = []
concat' (xs:ys) = xs ++ concat' ys

main :: IO()
main = print $ concat' [[1,2,3],[4,5,6],[7,8,9]]
