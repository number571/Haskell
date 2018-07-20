module Main where

qsort' :: Ord a => [a] -> [a]
qsort' [] = []
qsort' (x:xs) = qsort' [y | y <- xs, y < x] ++ [x] ++ qsort' [y | y <- xs, y >= x]

map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map' f xs

sum' :: Num a => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

length' :: [a] -> Int
length' xs = sum' [1 | _ <- xs]

head' :: [a] -> a
head' [] = undefined
head' (x:_) = x

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

frequency :: Ord a => [a] -> [(a, Int)]
frequency = map' (\xs -> (head' xs, length' xs)) . group' . qsort'

main :: IO()
main = print $ frequency list 
    where list = [2,1,3,3,4,6,2,1,2,3,1,2,3,7,6,8,3]
