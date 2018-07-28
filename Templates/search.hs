module Main where

search :: Eq a => a -> [a] -> Int
search = \n xs -> count n xs 0
    where
        count :: Eq a => a -> [a] -> Int -> Int
        count n (x:xs) i
            | n == x = i
            | otherwise = count n xs $ i+1

main :: IO()
main = print $ search 'k' ['a'..'z']
