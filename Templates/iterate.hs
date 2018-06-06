module Main where

take' :: Int -> [a] -> [a]
take' 0 _ = []
take' _ [] = []
take' x (y:ys) = y : take' (x-1) ys

iterate' :: (a -> a) -> a -> [a]
iterate' f x = x : iterate' f (f x)

main :: IO()
main = print $ take' 10 $ iterate' (*2) 1
