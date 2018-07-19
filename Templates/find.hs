module Main where

find :: (a -> Bool) -> [a] -> Maybe a
find _ [] = Nothing
find f (x:xs)
    | f x = Just x
    | otherwise = find f xs

main :: IO()
main = print $ find (>3) [1..10]
