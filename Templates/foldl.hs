module Main where

foldl' :: (a -> b -> a) -> a -> [b] -> a
foldl' _ x [] = x
foldl' f x (y:ys) = foldl' f (f x y) ys

main :: IO()
main = print $ foldl' (/) 64 [4,2,4]
