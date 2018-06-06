module Main where

flip' :: (a -> b -> c) -> b -> a -> c
flip' f x y = f y x

main :: IO()
main = print $ flip' (/) 2 5
