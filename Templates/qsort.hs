{-# LANGUAGE MultiWayIf #-}
module Main where

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' f (x:xs) = if
    | f x -> x : filter' f xs
    | otherwise -> filter' f xs

qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x:xs) = qsort (filter' (< x) xs) ++ [x] ++ qsort (filter' (>= x) xs)

{-
qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x:xs) = qsort [y | y <- xs, y < x] ++ [x] ++ qsort [y | y <- xs, y >= x]
-}

main :: IO()
main = print $ qsort [8,7,9,0,6,3,4,5,1,2]
