module Main where

length' :: [a] -> Int
length' [] = 0
length' (x:xs) = 1 + length' xs

while' :: Ord a => Int -> ([a] -> [a]) -> [a] -> [a]
while' 0 _ xs = xs
while' n f xs = while' (n-1) f (f xs)

bsort :: Ord a => [a] -> [a]
bsort xs = while' (1 + length' xs) sorting' xs
   where
      sorting' :: Ord a => [a] -> [a]
      sorting' [] = []
      sorting' [x] = [x]
      sorting' (x:y:xs)
         | x > y = y : x : sorting' xs
         | otherwise = x : sorting' (y:xs)

main :: IO()
main = print $ bsort [8,7,9,4,5,6,3,1,2]
