module Main where

take' :: Int -> [a] -> [a]
take' 0 _ = []
take' _ [] = []
take' x (y:ys) = y : take' (x-1) ys

cycle' :: [a] -> [a]
cycle' x = x ++ cycle' x

main :: IO()
main = print $ take' 10 $ cycle' [1,2,3]
