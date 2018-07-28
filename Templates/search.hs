module Main where

search :: Eq a => a -> [a] -> Int
search = \y xs -> count y xs 0
    where
        count :: Eq a => a -> [a] -> Int -> Int
        count _ [] _ = -1
        count y (x:xs) i
            | y == x = i
            | otherwise = count y xs $ i + 1

main :: IO()
main = print $ search 'k' ['a'..'z']
