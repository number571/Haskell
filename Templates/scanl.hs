module Main where

scanl' :: (a -> b -> a) -> a -> [b] -> [a]
scanl' _ x [] = [x]
scanl' f x (y:ys) = x : scanl' f (f x y) ys

main = print $ scanl' (/) 64 [4,2,4]
