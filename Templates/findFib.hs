module Main where

-- 1 2 3 4 5 6 7  8  9 10 ...
-- 0 1 1 2 3 5 8 13 21 34 ...

fibonacci :: (Num a, Ord a) => a -> a
fibonacci x | x <= 3 = 1
fibonacci x = fibonacci (x-1) + fibonacci (x-2)

findFib :: (Num a, Ord a) => a -> a
findFib x = find x 1
    where find x n
            | x == fibonacci n = n
            | n > 20 = 0
            | otherwise = find x (n+1)

main :: IO()
main = print $ findFib 34
