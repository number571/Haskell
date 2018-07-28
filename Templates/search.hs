module Main where

search :: Eq a => a -> [a] -> Maybe Int
search = \n xs -> count n xs 0
    where
        count :: Eq a => a -> [a] -> Int -> Maybe Int
        count _ [] _ = Nothing
        count n (x:xs) i
            | n == x = Just i
            | otherwise = count n xs $ i + 1

main :: IO()
main = print $ search 'k' ['a'..'z']
