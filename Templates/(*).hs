module Main where

(***) :: (Num a, Ord a) => a -> a -> a
(***) _ 0 = 0
(***) x y | y > 0 = x + (***) x (y - 1)
(***) x y | y < 0 = (-x) + (***) x (y + 1)

main :: IO()
main = print $ 10 *** 3
