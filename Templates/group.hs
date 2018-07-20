module Main where

takeWhile' :: (a -> Bool) -> [a] -> [a]
takeWhile' _ [] = []
takeWhile' f (x:xs)
    | f x = x : takeWhile' f xs
    | otherwise = []

dropWhile' :: (a -> Bool) -> [a] -> [a]
dropWhile' _ [] = []
dropWhile' f (x:xs)
    | f x = dropWhile' f xs
    | otherwise = x:xs

group' :: Eq a => [a] -> [[a]]
group' [] = []
group' (x:xs) = ([x] ++ takeWhile' (x ==) xs) : (group' $ dropWhile' (x ==) xs)

main :: IO()
main = print $ group' [1,1,3,2,2,2,5,1,2,1,1,1]
