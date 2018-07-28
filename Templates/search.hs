module Main where

search :: Eq a => a -> [a] -> Maybe Int
search = \y xs -> count y xs 0
    where
        count :: Eq a => a -> [a] -> Int -> Maybe Int
        count _ [] _ = Nothing
        count y (x:xs) i
            | y == x = Just i
            | otherwise = count y xs $ i + 1

main :: IO()
main = print $ search 'k' ['a'..'z']
