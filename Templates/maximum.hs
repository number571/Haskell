module Main where

max' :: Ord a => a -> a -> a
max' x y | x > y = x | otherwise = y

maximum' :: Ord a => [a] -> a
maximum' [] = undefined 
maximum' [x] = x
maximum' (x:xs) = max' x $ maximum' xs

main :: IO()
main = print $ maximum' [1,5,3,8,2,3,4]
