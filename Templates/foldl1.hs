module Main where

foldl1' :: (a -> a -> a) -> [a] -> a
foldl1' _ [x] = x
foldl1' f (x:xs) = f x (foldl1' f xs)

main :: IO()
main = print $ foldl1' (+) [1..5]
