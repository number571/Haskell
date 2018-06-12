{-# LANGUAGE MultiWayIf #-}
module Main where

length' :: [a] -> Int
length' [] = 0
length' (x:xs) = 1 + length' xs

sort' :: Ord a => [a] -> [a]
sort' xs = while' (length' xs) sorting' xs
   where
      while' :: Ord a => Int -> ([a] -> [a]) -> [a] -> [a]
      while' 0 f xs = f xs
      while' n f xs = while' (n-1) f (f xs)

      sorting' :: Ord a => [a] -> [a]
      sorting' [] = []
      sorting' [x] = [x]
      sorting' (x:y:xs) = if
         | x > y -> y : x : sorting' xs
         | otherwise -> x : sorting' (y:xs)

main :: IO()
main = print $ sort' [8,7,9,4,5,6,3,1,2]
